package eltos.simpledialogfragment.list;

import android.widget.SectionIndexer;
import androidx.annotation.Nullable;
import java.util.ArrayList;

/* compiled from: AdvancedSectionAdapter.java */
/* loaded from: classes3.dex */
public abstract class b<T> extends eltos.simpledialogfragment.list.a<T> implements SectionIndexer {

    /* renamed from: j  reason: collision with root package name */
    private ArrayList<b<T>.a> f65254j = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdvancedSectionAdapter.java */
    /* loaded from: classes3.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        String f65255a;

        /* renamed from: b  reason: collision with root package name */
        int f65256b;

        a(String str, int i4) {
            this.f65255a = str;
            this.f65256b = i4;
        }

        public String toString() {
            return this.f65255a;
        }
    }

    private void C() {
        this.f65254j.clear();
        String str = null;
        for (int i4 = 0; i4 < getCount(); i4++) {
            String B = B(getItem(i4));
            if (B != null && !B.equals(str)) {
                this.f65254j.add(new a(B, i4));
                str = B;
            }
        }
        if (this.f65254j.size() == 0) {
            this.f65254j.add(new a(null, 0));
        }
    }

    @Nullable
    public abstract String B(T t9);

    @Override // android.widget.SectionIndexer
    public int getPositionForSection(int i4) {
        if (i4 < 0) {
            i4 = 0;
        }
        if (i4 >= this.f65254j.size()) {
            i4 = this.f65254j.size() - 1;
        }
        return this.f65254j.get(i4).f65256b;
    }

    @Override // android.widget.SectionIndexer
    public int getSectionForPosition(int i4) {
        for (int size = this.f65254j.size() - 1; size >= 0; size--) {
            if (i4 >= this.f65254j.get(size).f65256b) {
                return size;
            }
        }
        return 0;
    }

    @Override // android.widget.SectionIndexer
    public Object[] getSections() {
        return this.f65254j.toArray();
    }

    @Override // eltos.simpledialogfragment.list.a, android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        C();
    }
}
