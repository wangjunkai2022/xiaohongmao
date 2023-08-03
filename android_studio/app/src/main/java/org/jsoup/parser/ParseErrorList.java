package org.jsoup.parser;

import java.util.ArrayList;

/* loaded from: classes5.dex */
public class ParseErrorList extends ArrayList<d> {

    /* renamed from: c  reason: collision with root package name */
    private static final int f91895c = 16;

    /* renamed from: a  reason: collision with root package name */
    private final int f91896a;

    /* renamed from: b  reason: collision with root package name */
    private final int f91897b;

    ParseErrorList(int i4, int i10) {
        super(i4);
        this.f91896a = i4;
        this.f91897b = i10;
    }

    public static ParseErrorList noTracking() {
        return new ParseErrorList(0, 0);
    }

    public static ParseErrorList tracking(int i4) {
        return new ParseErrorList(16, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return size() < this.f91897b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return this.f91897b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ParseErrorList(ParseErrorList parseErrorList) {
        this(parseErrorList.f91896a, parseErrorList.f91897b);
    }
}
