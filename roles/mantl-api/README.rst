Mantl API
=========

.. versionadded:: 0.4

Mantl API provides various management and administrative tasks for your Mantl
cluster. Currently, Mantl API provides the ability to install and uninstall DCOS
packages.

Variables
---------

You can use these variables to customize your Mantl API installation.

.. data:: mantl_api_image

   default: ``ryane/mantl-api``

.. data:: mantl_api_image_tag

   default: ``0.1``

.. data:: mantl_api_container_name

   default: ``mantl-api``

.. data:: mantl_api_port

   default: ``4001``


.. data:: mantl_api_ports

   default: ``-p 4001:4001``

.. data:: mantl_api_proxy_port

   default: ``4002``
