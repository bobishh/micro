defmodule ESpec.Phoenix.Extend do
  def model do
    quote do
      alias Micro.Repo
    end
  end

  def controller do
    quote do
      alias MicroWeb
      import MicroWeb.Router.Helpers

      @endpoint MicroWeb.Endpoint
    end
  end

  def view do
    quote do
      import MicroWeb.Router.Helpers
    end
  end

  def channel do
    quote do
      alias MicroWeb.Repo

      @endpoint MicroWeb.Endpoint
    end
  end

  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
