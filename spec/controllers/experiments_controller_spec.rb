require 'spec_helper'

describe ExperimentsController do

  describe "GET index" do
    it "assigns all experiments as @experiments"
  end

  describe "GET show" do
    it "assigns the requested experiment as @experiment"
  end

  describe "GET new" do
    it "assigns a new experiment as @experiment"
  end

  describe "GET edit" do
    it "assigns the requested experiment as @experiment"
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Experiment"

      it "assigns a newly created experiment as @experiment"

      it "redirects to the created experiment"
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved experiment as @experiment"

      it "re-renders the 'new' template"
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested experiment"

      it "assigns the requested experiment as @experiment"

      it "redirects to the experiment"
    end

    describe "with invalid params" do
      it "assigns the experiment as @experiment"

      it "re-renders the 'edit' template"
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested experiment"

    it "redirects to the experiments list"
  end

end
