*** Settings ***
Documentation         This file contains all the resource files.
...                   Import only this file to use all the resources contained in the files below

Resource    helper.robot
Resource    suite_setup.robot
Resource    suite_teardown.robot
Resource    ${CURDIR}/Objects/home.resource
Resource    ${CURDIR}/Objects/shop.resource
