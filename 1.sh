#!/bin/bash
read -p "digite o nome de um arquivo" arq
tr '0-9' 'z' < $arq
