#!/bin/bash
read -p "digite o nome de um arquivo: " arq
tr -s '\n' < $arq
