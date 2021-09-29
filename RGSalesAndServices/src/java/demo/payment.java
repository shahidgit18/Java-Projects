/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demo;

/**
 *
 * @author HP
 */
public class payment {
    int payid,partyid;
    String paydt;
    Float payamt;

    public int getPayid() {
        return payid;
    }

    public void setPayid(int payid) {
        this.payid = payid;
    }

    public int getPartyid() {
        return partyid;
    }

    public void setPartyid(int partyid) {
        this.partyid = partyid;
    }

    public String getPaydt() {
        return paydt;
    }

    public void setPaydt(String paydt) {
        this.paydt = paydt;
    }

    public Float getPayamt() {
        return payamt;
    }

    public void setPayamt(Float payamt) {
        this.payamt = payamt;
    }
}
