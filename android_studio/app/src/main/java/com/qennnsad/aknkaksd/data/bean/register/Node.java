package com.qennnsad.aknkaksd.data.bean.register;

/* loaded from: classes3.dex */
public class Node {
    private Double data;
    private Node next;

    public Node(Double d4) {
        this.data = d4;
    }

    public Double getData() {
        return this.data;
    }

    public Node getNext() {
        return this.next;
    }

    public void setData(Double d4) {
        this.data = d4;
    }

    public void setNext(Node node) {
        this.next = node;
    }
}
