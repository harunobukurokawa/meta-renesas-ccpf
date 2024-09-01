FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

do_install:append:rcar-gen3() {
    sed -i -e '$a\idle-time=0\' ${D}/${sysconfdir}/xdg/weston/weston.ini
}

