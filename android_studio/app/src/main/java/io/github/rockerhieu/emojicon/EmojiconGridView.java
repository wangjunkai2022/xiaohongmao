package io.github.rockerhieu.emojicon;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ListAdapter;
import io.github.rockerhieu.emojicon.c;
import io.github.rockerhieu.emojicon.emoji.Emojicon;
import io.github.rockerhieu.emojicon.g;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public class EmojiconGridView extends GridView implements AdapterView.OnItemClickListener {

    /* renamed from: a  reason: collision with root package name */
    private int f69843a;

    /* renamed from: b  reason: collision with root package name */
    private Emojicon[] f69844b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f69845c;

    /* renamed from: d  reason: collision with root package name */
    private c.a f69846d;

    /* renamed from: e  reason: collision with root package name */
    private b f69847e;

    /* renamed from: f  reason: collision with root package name */
    private List<Emojicon> f69848f;

    /* loaded from: classes3.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        Emojicon[] data;
        int scrollX;
        int scrollY;
        int type;
        boolean useSystemDefaults;

        /* loaded from: classes3.dex */
        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public SavedState[] newArray(int i4) {
                return new SavedState[i4];
            }
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i4) {
            super.writeToParcel(parcel, i4);
            parcel.writeInt(this.type);
            parcel.writeParcelableArray(this.data, i4);
            parcel.writeInt(this.useSystemDefaults ? 1 : 0);
            parcel.writeInt(this.scrollX);
            parcel.writeInt(this.scrollY);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.type = parcel.readInt();
            this.data = (Emojicon[]) parcel.readParcelableArray(Emojicon.class.getClassLoader());
            this.useSystemDefaults = parcel.readInt() != 0;
            this.scrollX = parcel.readInt();
            this.scrollY = parcel.readInt();
        }
    }

    public EmojiconGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, g.d.f70054v1);
        setOnItemClickListener(this);
        setSaveEnabled(true);
        this.f69848f = new ArrayList();
        b bVar = new b(context, this.f69848f);
        this.f69847e = bVar;
        setAdapter((ListAdapter) bVar);
    }

    public void a(int i4, Emojicon[] emojiconArr, boolean z9) {
        this.f69843a = i4;
        if (i4 != 0) {
            this.f69844b = Emojicon.getEmojicons(i4);
        } else {
            this.f69844b = emojiconArr;
        }
        this.f69845c = z9;
        if (this.f69844b == null) {
            this.f69848f.clear();
        } else {
            this.f69848f.clear();
            Collections.addAll(this.f69848f, this.f69844b);
        }
        this.f69847e.notifyDataSetChanged();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i4, long j4) {
        c.a aVar = this.f69846d;
        if (aVar != null) {
            aVar.i((Emojicon) adapterView.getItemAtPosition(i4));
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f69843a = savedState.type;
        this.f69844b = savedState.data;
        this.f69845c = savedState.useSystemDefaults;
        setScrollX(savedState.scrollX);
        setScrollY(savedState.scrollY);
        a(this.f69843a, this.f69844b, this.f69845c);
    }

    @Override // android.widget.AbsListView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.data = this.f69844b;
        savedState.type = this.f69843a;
        savedState.useSystemDefaults = this.f69845c;
        savedState.scrollX = getScrollX();
        savedState.scrollY = getScrollY();
        return savedState;
    }

    public void setOnEmojiconClickedListener(c.a aVar) {
        this.f69846d = aVar;
    }

    public EmojiconGridView(Context context) {
        this(context, null);
    }
}
