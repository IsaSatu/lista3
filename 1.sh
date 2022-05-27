#!/bin/bash
read -p "digite o nme de um arquivo" arq
tr '0-9' 'z' < $arq
