RDEPENDS_packagegroup-gstreamer1.0-plugins-base_append = " \
    ${@oe.utils.conditional("USE_CSI_CAMERA", "1", \
        "gstreamer1.0-plugins-base-apps", \
    "", d)}"

RDEPENDS_packagegroup-gstreamer1.0-plugins-video_append = " \
    ${@oe.utils.conditional("USE_CSI_CAMERA", "1", " \
        gstreamer1.0-plugins-good-imagefreeze \
        gstreamer1.0-plugins-bad-bayer \
    ", "", d)}"
