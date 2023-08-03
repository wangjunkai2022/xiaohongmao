package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.JsonParser;
import java.util.Iterator;

/* compiled from: TreeNode.java */
/* loaded from: classes.dex */
public interface m {
    JsonToken asToken();

    m at(e eVar);

    m at(String str) throws IllegalArgumentException;

    Iterator<String> fieldNames();

    m get(int i4);

    m get(String str);

    boolean isArray();

    boolean isContainerNode();

    boolean isMissingNode();

    boolean isObject();

    boolean isValueNode();

    JsonParser.NumberType numberType();

    m path(int i4);

    m path(String str);

    int size();

    JsonParser traverse();

    JsonParser traverse(h hVar);
}
