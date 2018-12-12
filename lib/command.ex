defmodule Command do
  # Generic operations

  def get_config do
    ~s(<get-config>
        <source><running/></source>
      </get-config>)
  end

  def get_config filter do
    ~s(<get-config>
        <source><running/></source>
        <filter>#{filter}</filter>
      </get-config>)
  end

  def copy_config do
    ~s(<copy-config>
        <source><running/></source>
        <target><startup/></target>
      </copy-config>)
  end

  def delete_config do
    ~s(<delete-config>
        <target><startup/></target>
      </delete-config>)
  end

  def lock do
    ~s(<lock>
        <target><candidate/></target>
      </lock>)
  end

  def unlock do
    ~s(<unlock>
        <target><candidate/></target>
      </unlock>)
  end

  def edit_config config do
    ~s(<edit-config>
        <target><candidate/></target>
        <config>#{config}</config>
      </edit-config>)
  end

  def commit do
    "<commit/>"
  end

  # Juniper specific operations

  def get_junos_configuration do
    "<get-configuration format=\"text\" database=\"committed\"></get-configuration>"
  end
end
