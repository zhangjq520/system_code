function QueryTool() {
    this.init = init;
    this.getQueryObject = getQueryObject;
    this.getDefaultQueryOption = getDefaultQueryOption;
    this.getQueryObjectConnectionOr = getQueryObjectConnectionOr;
    this.getQueryObjectConditionIn = getQueryObjectConditionIn;
    this.getContractQueryObjectConditionIn = getContractQueryObjectConditionIn;

    var queryOption = {
        pagination: {
            current: 1,
            total: null,
            perPage: 20,
            maxSize: 5
        },
        search: {},
        orderBy: {
            name: null,
            type: 'asc'
        },
        flag: null
    };

    function init() {}

    function getQueryObjectConditionIn(option, defaultKey, advanced) {
        var queryBody = {
            pagingTool: {
                currentPage: option.pagination.current || 1,
                pageSize: option.pagination.perPage || 10
            },
            queryOrderBies: [{
                columnName: option.orderBy.name || defaultKey,
                orderType: option.orderBy.type || 'asc'
            }]
        };
        if (option.flag) {
            queryBody.queryCriterias = option.queryCriterias;
        } else {
            queryBody.queryCriterias = userInHandleQuery(option.search, defaultKey, false);
        }

        return queryBody;
    }


    function getContractQueryObjectConditionIn(option, defaultKey, advanced, flagType) {
        var queryBody = {
            pagingTool: {
                currentPage: option.pagination.current || 1,
                pageSize: option.pagination.perPage || 10
            },
            queryOrderBies: [{
                columnName: option.orderBy.name || defaultKey,
                orderType: option.orderBy.type || 'asc'
            }]
        };
        if (option.flag) {
            queryBody.queryCriterias = option.queryCriterias;
        } else {
            queryBody.queryCriterias = userInHandleContractQuery(option.search, defaultKey, flagType);
        }

        return queryBody;
    }

    function getQueryObjectConnectionOr(option, defaultKey) {
        var queryBody = {
            pagingTool: {
                currentPage: option.pagination.current || 1,
                pageSize: option.pagination.perPage || 10
            },
            queryOrderBies: [{
                columnName: option.orderBy.name || defaultKey,
                orderType: option.orderBy.type || 'asc'
            }]
        };

        if (option.flag) {
            queryBody.queryCriterias = option.queryCriterias;
        } else {
            queryBody.queryCriterias = handleQuery(option.search, defaultKey, true);
        }
        console.log(queryBody)
        return queryBody;
    }

    function getQueryObject(option, defaultKey) {
        return {
            pagingTool: {
                currentPage: option.pagination.current || 1,
                pageSize: option.pagination.perPage || 10
            },
            queryCriterias: handleQuery(option.search, defaultKey, false),
            queryOrderBies: [{
                columnName: option.orderBy.name || defaultKey,
                orderType: option.orderBy.type || 'asc'
            }]
        };
    }

    function getDefaultQueryOption() {
        return queryOption;
    }

    function handleQuery(searchKeys, defaultKey, isOr) {
        if (_.isEmpty(searchKeys)) {
            return [{
                connection: isOr ? 'or' : 'and',
                key: defaultKey,
                condition: 'like',
                value: '',
                isValueADigital: false
            }];
        } else {
            var queryCriterias = [];
            _.each(searchKeys, function(value, key) {
                if (_.isNull(value) == false) {
                    if (_.isString(value)) {
                        queryCriterias.push({
                            connection: isOr ? 'or' : 'and',
                            key: key,
                            condition: 'like',
                            value: value,
                            isValueADigital: false
                        });
                    } else if (_.isBoolean(value)) {
                        queryCriterias.push({
                            connection: isOr ? 'or' : 'and',
                            key: key,
                            condition: '=',
                            value: Boolean(value),
                            isValueADigital: true
                        });
                    } else if (_.isObject(value)) {
                        queryCriterias.push({
                            connection: isOr ? 'or' : 'and',
                            key: key,
                            condition: 'like',
                            value: value.name,
                            isValueADigital: false
                        });
                    } else if (_.isArray(value)) {
                        _.each(value, function(val) {
                            queryCriterias.push({
                                connection: isOr ? 'or' : 'and',
                                key: key,
                                condition: 'like',
                                value: val,
                                isValueADigital: false
                            });
                        });
                    }
                }
            });
            return queryCriterias;
        }
    }

    function userInHandleQuery(searchKeys, defaultKey, isOr) {
        if (_.isEmpty(searchKeys)) {
            return [{
                connection: isOr ? 'or' : 'and',
                key: defaultKey,
                condition: 'like',
                value: '',
                isValueADigital: false
            }];
        } else {
            var queryCriterias = [];
            _.each(searchKeys, function(value, key) {
                if (_.isNull(value) == false) {
                    if (_.isString(value) && key == 'startTime') {
                        queryCriterias.push({
                            connection: 'and',
                            key: 'date_of_application',
                            condition: '>=',
                            value: value,
                            isValueADigital: false
                        });
                    }
                    if (_.isString(value) && key == 'endTime') {
                        queryCriterias.push({
                            connection: 'and',
                            key: 'date_of_application',
                            condition: '<=',
                            value: value,
                            isValueADigital: false
                        });
                    }
                    if (_.isString(value) && key!='startTime' && key!='endTime') {
                        queryCriterias.push({
                            connection: isOr ? 'or' : 'and',
                            key: key,
                            condition: 'in',
                            value: value,
                            isValueADigital: false
                        });

                    } else if (_.isBoolean(value)) {
                        queryCriterias.push({
                            connection: isOr ? 'or' : 'and',
                            key: key,
                            condition: '=',
                            value: Boolean(value),
                            isValueADigital: true
                        });
                    } else if (_.isObject(value)) {
                        queryCriterias.push({
                            connection: isOr ? 'or' : 'and',
                            key: key,
                            condition: 'in',
                            value: value.name,
                            isValueADigital: false
                        });
                    } else if (_.isArray(value)) {
                        _.each(value, function(val) {
                            queryCriterias.push({
                                connection: isOr ? 'or' : 'and',
                                key: key,
                                condition: 'in',
                                value: val,
                                isValueADigital: false
                            });
                        });
                    }
                }
            });
            console.log(queryCriterias)

            return queryCriterias;
        }
    }

    function userInHandleContractQuery(searchKeys, defaultKey, isOr) {
        if (_.isEmpty(searchKeys)) {
            return [{
                connection: isOr ? 'or' : 'and',
                key: defaultKey,
                condition: 'like',
                value: '',
                isValueADigital: false
            }];
        } else {
            var queryCriterias = [];
            _.each(searchKeys, function(value, key) {
                if (_.isNull(value) == false) {
                    // console.log(key)
                    if (_.isString(value) && key != 'org_id' && key != 'org_ids') {
                        queryCriterias.push({
                            connection: isOr ? 'or' : 'and',
                            key: key,
                            condition: 'like',
                            value: value,
                            isValueADigital: false
                        });

                    } else if (_.isBoolean(value)) {
                        queryCriterias.push({
                            connection: isOr ? 'or' : 'and',
                            key: key,
                            condition: '=',
                            value: Boolean(value),
                            isValueADigital: true
                        });
                    } else if (_.isObject(value)) {
                        queryCriterias.push({
                            connection: isOr ? 'or' : 'and',
                            key: key,
                            condition: 'in',
                            value: value.name,
                            isValueADigital: false
                        });
                    } else if (_.isArray(value)) {
                        _.each(value, function(val) {
                            queryCriterias.push({
                                connection: isOr ? 'or' : 'and',
                                key: key,
                                condition: 'in',
                                value: val,
                                isValueADigital: false
                            });
                        });
                    }

                    if (key == 'org_id' || key == 'org_ids') {
                        queryCriterias.push({
                            // connection: isOr ? 'and' : 'or',
                            connection: 'and',
                            key: key,
                            condition: 'in',
                            value: value,
                            isValueADigital: false
                        });
                    }
                }
            });

            // console.log(queryCriterias)
            return queryCriterias;
        }
    }
}
