package com.google.firebase.components;

import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
public class DependencyCycleException extends DependencyException {

    /* renamed from: a  reason: collision with root package name */
    private final List<f<?>> f35402a;

    public DependencyCycleException(List<f<?>> list) {
        super("Dependency cycle detected: " + Arrays.toString(list.toArray()));
        this.f35402a = list;
    }

    public List<f<?>> getComponentsInCycle() {
        return this.f35402a;
    }
}
