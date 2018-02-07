package com.logic.system.service.impl;

import com.logic.system.service.IShellService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import java.io.BufferedReader;
import java.io.InputStreamReader;

@Service
public class ShellService implements IShellService {

  @Override
  public String execute(String shell) throws Exception {
    String result = null;

    if (!StringUtils.isEmpty(shell)) {
      BufferedReader br = null;
      try {
        String[] data = shell.split("\\s+");
        Process p = Runtime.getRuntime().exec(data);
        br = new BufferedReader(new InputStreamReader(p.getInputStream()));
        String line = null;
        StringBuilder sb = new StringBuilder();
        while ((line = br.readLine()) != null) {
          sb.append(line + "\n");
        }
        result = sb.toString();
      } catch (Exception e) {
        e.printStackTrace();
      } finally {
        if (br != null) {
          try {
            br.close();
          } catch (Exception e) {
            e.printStackTrace();
          }
        }
      }
    }

    return result;
  }

}
