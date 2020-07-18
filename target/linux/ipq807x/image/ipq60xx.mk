KERNEL_LOADADDR := 0x41008000

define Device/cig_wf188
  DEVICE_TITLE := Cigtech WF-188
  DEVICE_DTS := qcom-ipq6018-cig-wf188
  DEVICE_DTS_CONFIG := config@cp03-c1
  SUPPORTED_DEVICES := cig,wf188
  IMAGES := sysupgrade.tar
  IMAGE/sysupgrade.tar/squashfs := append-rootfs | pad-rootfs | sysupgrade-tar rootfs=$$$$@ | append-metadata
  DEVICE_PACKAGES := ath11k-wifi-cig-wf188 uboot-env
endef
TARGET_DEVICES += cig_wf188

define Device/cig_wf188n
  DEVICE_TITLE := Cigtech WF-188n
  DEVICE_DTS := qcom-ipq6018-cig-wf188n
  DEVICE_DTS_CONFIG := config@cp03-c1
  SUPPORTED_DEVICES := cig,wf188n
  DEVICE_PACKAGES := ath11k-wifi-cig-wf188n uboot-env
endef
TARGET_DEVICES += cig_wf188n

define Device/edgecore_eap101
  DEVICE_TITLE := EdgeCore EAP101
  DEVICE_DTS := qcom-ipq6018-edgecore-eap101
  DEVICE_DTS_CONFIG := config@cp01-c1
  SUPPORTED_DEVICES := edgecore,eap101
  DEVICE_PACKAGES := ath11k-wifi-edgecore-eap101 uboot-envtools
endef
TARGET_DEVICES += edgecore_eap101

define Device/qcom_cp01_c1
  DEVICE_TITLE := Qualcomm Cypress C1
  DEVICE_DTS := qcom-ipq6018-cp01-c1
  SUPPORTED_DEVICES := qcom,ipq6018-cp01
  DEVICE_PACKAGES := ath11k-wifi-qcom-ipq6018
endef
TARGET_DEVICES += qcom_cp01_c1

define Device/xiaomi_ax1800
  DEVICE_TITLE := Xiaomi AX1800
  DEVICE_DTS := qcom-ipq6018-miwifi-ax1800
  SUPPORTED_DEVICES := xiaomi,ax1800
  DEVICE_DTS_CONFIG :=  config@cp03-c1
  DEVICE_PACKAGES := ath11k-wifi-xiaomi-ax1800
endef
TARGET_DEVICES += xiaomi_ax1800
