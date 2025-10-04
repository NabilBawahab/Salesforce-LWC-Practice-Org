import { LightningElement, track } from "lwc";
import searchContactsAndLeads from "@salesforce/apex/ContactAndLeadSearch.searchContactsAndLeads";

export default class TestDisplayingData extends LightningElement {
  @track lead;
  @track contact;

  async handleChange(e) {
    const keyword = e.target.value;

    const result = await searchContactsAndLeads({ parameter: keyword });

    this.lead = result[0];
    this.contact = result[1];

    console.log(result[0], result[1]);
  }
}
