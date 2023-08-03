package com.qennnsad.aknkaksd.data.bean.register;

import com.qennnsad.aknkaksd.util.o0;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public class SenList {
    private int count;
    private Node point;
    private Node root;

    private void deleteNodeByIndex(Node node, int i4, int i10) {
        if (i10 == 0) {
            this.root = this.root.getNext();
            this.count--;
        } else if (i4 == i10 - 1) {
            node.setNext(node.getNext().getNext());
            this.count--;
        } else {
            deleteNodeByIndex(node.getNext(), i4 + 1, i10);
        }
    }

    private Double getDataByIndex(Node node, int i4, int i10) {
        if (i4 == i10) {
            return node.getData();
        }
        return getDataByIndex(node.getNext(), i4 + 1, i10);
    }

    private boolean isContain(Node node, Double d4) {
        if (node == null) {
            return false;
        }
        if (d4.equals(node.getData())) {
            return true;
        }
        return isContain(node.getNext(), d4);
    }

    private void print(Node node) {
        if (node == null) {
            return;
        }
        print(node.getNext());
    }

    private void setDataByIndex(Node node, int i4, int i10, Double d4) {
        if (i4 == i10) {
            node.setData(d4);
        } else {
            setDataByIndex(node.getNext(), i4 + 1, i10, d4);
        }
    }

    private void toArrayBy(Node node, Double[] dArr, int i4) {
        if (node == null) {
            return;
        }
        dArr[i4] = node.getData();
        toArrayBy(node.getNext(), dArr, i4 + 1);
    }

    public void add(Node node) {
        if (this.root == null) {
            this.root = node;
            this.point = node;
            this.count++;
        } else if (node.getData().doubleValue() > this.point.getData().doubleValue()) {
            this.point.setNext(node);
            this.point = node;
            this.count++;
        }
    }

    public void clear() {
        this.root = null;
        this.count = 0;
        System.gc();
    }

    public boolean contain(Double d4) {
        return isContain(this.root, d4);
    }

    public void deleteData(Double d4) {
        if (contain(d4)) {
            deleteNodeByData(this.root, d4);
        }
    }

    public void deleteNode(int i4) {
        if (i4 < 0 || i4 >= this.count) {
            return;
        }
        deleteNodeByIndex(this.root, 0, i4);
    }

    public void deleteNodeByData(Node node, Double d4) {
        if (d4.equals(this.root.getData())) {
            this.root = this.root.getNext();
            this.count--;
        } else if (d4.equals(node.getNext().getData())) {
            node.setNext(node.getNext().getNext());
            this.count--;
        } else {
            deleteNodeByData(node.getNext(), d4);
        }
    }

    public Node findReverNode(int i4) {
        if (i4 < 1 || i4 > size()) {
            return null;
        }
        Node node = this.root;
        Node node2 = node;
        for (int i10 = 0; i10 < i4 - 1; i10++) {
            node2 = node2.getNext();
        }
        while (node2.getNext() != null) {
            node2 = node2.getNext();
            node = node.getNext();
        }
        return node;
    }

    public Double getData(int i4) {
        if (i4 < 0 || i4 >= this.count) {
            return null;
        }
        return getDataByIndex(this.root, 0, i4);
    }

    public boolean isEmpty() {
        return this.root == null;
    }

    public void printAll() {
        print(this.root);
    }

    public void setData(Double d4, int i4) {
        if (i4 < 0 || i4 >= this.count) {
            return;
        }
        setDataByIndex(this.root, 0, i4, d4);
    }

    public int size() {
        return this.count;
    }

    public Double[] toArray() {
        Double[] dArr = new Double[this.count];
        toArrayBy(this.root, dArr, 0);
        return dArr;
    }

    public List<Double> toList() {
        if (size() >= 10) {
            Double[] dArr = new Double[10];
            toArrayBy(findReverNode(10), dArr, 0);
            List<Double> asList = Arrays.asList(dArr);
            o0.g("sensorlist:", "toarray:" + asList.toString());
            return asList;
        }
        Double[] dArr2 = new Double[this.count];
        toArrayBy(this.root, dArr2, 0);
        List<Double> asList2 = Arrays.asList(dArr2);
        o0.g("sensorlist:", "toarray:" + asList2.toString());
        return asList2;
    }
}
