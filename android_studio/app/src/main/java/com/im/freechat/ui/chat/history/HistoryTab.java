package com.im.freechat.ui.chat.history;

import androidx.annotation.StringRes;
import b4.b;
import kotlin.Metadata;

/* compiled from: HistoryTabFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\r\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0013\b\u0002\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/im/freechat/ui/chat/history/HistoryTab;", "", "", "a", "I", "getResId", "()I", "resId", "<init>", "(Ljava/lang/String;II)V", "Members", "Media", "Links", "Files", "Groups", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public enum HistoryTab {
    Members(b.s.f2404u2),
    Media(b.s.f2394t2),
    Links(b.s.f2384s2),
    Files(b.s.f2364q2),
    Groups(b.s.f2374r2);
    

    /* renamed from: a  reason: collision with root package name */
    private final int f42849a;

    HistoryTab(@StringRes int i4) {
        this.f42849a = i4;
    }

    public final int getResId() {
        return this.f42849a;
    }
}
