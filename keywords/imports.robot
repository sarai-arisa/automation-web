*** Settings ***
#Library
Library     SeleniumLibrary

#Keyword
Resource    ${CURDIR}/../keywords/login_page.robot
Resource    ${CURDIR}/../keywords/api/login.robot

#Locator
Resource    ${CURDIR}/../resources/locators/login_locator.robot
Resource    ${CURDIR}/../resources/locators/api/login.robot


