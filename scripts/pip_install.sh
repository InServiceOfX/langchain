#!/bin/bash

pip_install_langchain_components()
{
  # Install editable install from source.
  # See https://python.langchain.com/docs/get_started/installation

  cd ../libs || exit 1

  cd langchain || exit 1
  pip install -e .    

  cd ../core || exit 1
  pip install -e .  	

  cd ../community || exit 1
  pip install -e .    

  # Install partners, which include Anthropic, Mistral AI, Open AI, etc.

  cd ../partners || exit 1

  cd anthropic || exit 1
  pip install -e .    

  cd ../mistralai || exit 1
  pip install -e .    

  cd ../openai || exit 1
  pip install -e .    

  cd ../together || exit 1
  pip install -e .    
}

main()
{
  pip_install_langchain_components
}

main