function SelectiveSerialize() {

    this.convertSerializedArrayToHash = convertSerializedArrayToHash;
    this.hashDiff = hashDiff;

    function convertSerializedArrayToHash(a) {
        var valueObj = {};
        for (var i = 0; i < a.length; i++) {
            valueObj[a[i].name] = a[i].value;
        }
        return valueObj;
    }

    function hashDiff(start, current) {
        var diffValue = {};
        for (var k in current) {
            if (start[k] !== current[k]) diffValue[k] = current[k];
        }
        for (var k in start) {
            if (start[k] !== current[k]) diffValue[k] = current[k];
        }
        return diffValue;
    }
}