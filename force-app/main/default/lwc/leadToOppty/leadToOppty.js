import { LightningElement, track } from "lwc";

export default class LeadToOppty extends LightningElement {
  @track inputs = {
    firstName: "",
    lastName: "",
    company: "",
    email: "",
    prequalified: false
  };

  handleChange(e) {}
}