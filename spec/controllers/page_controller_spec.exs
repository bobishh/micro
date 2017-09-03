defmodule Micro.PageSpec do
  use ESpec.Phoenix, controller: Micro.PageController, async: false
  #import Micro.Factory
  import Plug.Test

  let :connection, do: build_conn() |> init_test_session(test: true)

  describe "index" do
    let :response do
      connection()
      |> get(page_path(build_conn, :index))
    end

    it "responds with status 200" do
      expect response().status |> to(eq(200))
    end
  end
end
