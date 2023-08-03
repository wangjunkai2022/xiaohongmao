package io.github.rockerhieu.emojicon;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import androidx.emoji2.widget.EmojiTextView;
import io.github.rockerhieu.emojicon.emoji.Emojicon;
import io.github.rockerhieu.emojicon.g;
import java.util.List;

/* compiled from: EmojiconAdapter.java */
/* loaded from: classes3.dex */
class b extends ArrayAdapter<Emojicon> {

    /* renamed from: a  reason: collision with root package name */
    private boolean f69860a;

    /* compiled from: EmojiconAdapter.java */
    /* loaded from: classes3.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        EmojiTextView f69861a;

        a() {
        }
    }

    public b(Context context, List<Emojicon> list) {
        super(context, g.m.E, list);
        this.f69860a = false;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i4, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = View.inflate(getContext(), g.m.E, null);
            a aVar = new a();
            aVar.f69861a = (EmojiTextView) view.findViewById(g.j.f70352v0);
            view.setTag(aVar);
        }
        ((a) view.getTag()).f69861a.setText(getItem(i4).getEmoji());
        return view;
    }

    public b(Context context, List<Emojicon> list, boolean z9) {
        super(context, g.m.E, list);
        this.f69860a = z9;
    }

    public b(Context context, Emojicon[] emojiconArr) {
        super(context, g.m.E, emojiconArr);
        this.f69860a = false;
    }

    public b(Context context, Emojicon[] emojiconArr, boolean z9) {
        super(context, g.m.E, emojiconArr);
        this.f69860a = z9;
    }
}
