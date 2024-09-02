![image](https://github.com/user-attachments/assets/c874bcc8-33fd-46c2-a9b3-f08a14cd4863)


For a specific purpose. If you use office pc at home, changing ip regularly is very tiresome.

Edit the following in the bat file with your office ip address

    netsh interface ip set address name="Wi-Fi" static 10.xxx.xxx.xx 255.255.255.0 10.xxx.xxx.1
    netsh interface ip set dns name="Wi-Fi" static xxx.xxx.x.1
    netsh interface ip add dns name="Wi-Fi" xxx.xxx.xx.3 index=2
    echo Office network settings applied.

  ***All the details for above code changes will be available in ipv4 as shown below:***
  
![image](https://github.com/user-attachments/assets/4dcce581-3f9e-49cf-bd5c-b5df8b41d5f4)
