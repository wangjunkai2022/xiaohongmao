package eltos.simpledialogfragment.list;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Checkable;
import android.widget.Filter;
import android.widget.Filterable;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pair;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: AdvancedAdapter.java */
/* loaded from: classes3.dex */
public abstract class a<T> extends BaseAdapter implements Filterable {

    /* renamed from: g  reason: collision with root package name */
    public static final int f65236g = 0;

    /* renamed from: h  reason: collision with root package name */
    public static final int f65237h = 1;

    /* renamed from: i  reason: collision with root package name */
    public static final int f65238i = 2;

    /* renamed from: a  reason: collision with root package name */
    private int f65239a = 2;

    /* renamed from: b  reason: collision with root package name */
    private boolean f65240b = false;
    @ColorInt

    /* renamed from: c  reason: collision with root package name */
    private Integer f65241c = null;

    /* renamed from: d  reason: collision with root package name */
    private ArrayList<a<T>.b> f65242d = new ArrayList<>();

    /* renamed from: e  reason: collision with root package name */
    private ArrayList<a<T>.b> f65243e = new ArrayList<>();

    /* renamed from: f  reason: collision with root package name */
    private CharSequence f65244f = null;

    /* compiled from: AdvancedAdapter.java */
    /* renamed from: eltos.simpledialogfragment.list.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public abstract class AbstractC0524a extends Filter {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private CharSequence f65245a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private Pattern f65246b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f65247c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f65248d;

        public AbstractC0524a(a aVar) {
            this(true, true);
        }

        protected boolean b() {
            return this.f65247c;
        }

        protected boolean c() {
            return this.f65248d;
        }

        protected abstract boolean d(T t9, @NonNull CharSequence charSequence);

        /* JADX INFO: Access modifiers changed from: protected */
        public boolean e(String str) {
            Pattern pattern;
            return (str == null || (pattern = this.f65246b) == null || !pattern.matcher(str).find()) ? false : true;
        }

        @Deprecated
        protected boolean f(String str, @NonNull CharSequence charSequence) {
            if (str != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(this.f65248d ? "\\b" : "");
                sb.append("(");
                sb.append((Object) charSequence);
                sb.append(")");
                return Pattern.compile(sb.toString(), this.f65247c ? 2 : 0).matcher(str).find();
            }
            return false;
        }

        @Override // android.widget.Filter
        @Nullable
        protected Filter.FilterResults performFiltering(@Nullable CharSequence charSequence) {
            this.f65245a = charSequence;
            if (charSequence != null && charSequence.length() != 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(this.f65248d ? "\\b" : "");
                sb.append("(");
                sb.append((Object) this.f65245a);
                sb.append(")");
                this.f65246b = Pattern.compile(sb.toString(), this.f65247c ? 2 : 0);
                ArrayList arrayList = new ArrayList();
                Iterator it = a.this.f65243e.iterator();
                while (it.hasNext()) {
                    b bVar = (b) it.next();
                    if (d(bVar.f65250a, charSequence)) {
                        arrayList.add(bVar);
                    }
                }
                Filter.FilterResults filterResults = new Filter.FilterResults();
                filterResults.values = arrayList;
                filterResults.count = arrayList.size();
                return filterResults;
            }
            this.f65246b = null;
            return null;
        }

        @Override // android.widget.Filter
        protected void publishResults(CharSequence charSequence, @Nullable Filter.FilterResults filterResults) {
            a.this.f65244f = charSequence;
            a.this.f65242d.clear();
            if (filterResults != null && filterResults.values != null) {
                a.this.f65242d.addAll((Collection) filterResults.values);
            } else {
                a.this.f65242d.addAll(a.this.f65243e);
            }
            a.this.notifyDataSetChanged();
            a.this.f65240b = true;
        }

        public AbstractC0524a(boolean z9, boolean z10) {
            this.f65247c = z9;
            this.f65248d = z10;
        }
    }

    /* compiled from: AdvancedAdapter.java */
    /* loaded from: classes3.dex */
    public interface c<Item> {
        @Nullable
        Long a(Item item);
    }

    public void A(int i4) {
        int i10 = this.f65239a;
        if (i10 == 2) {
            w(i4, !n(i4));
        } else if (i10 == 1) {
            w(i4, true);
        }
    }

    protected void e() {
        if (getFilter() != null) {
            getFilter().filter(this.f65244f);
        }
    }

    public int f() {
        Iterator<a<T>.b> it = this.f65243e.iterator();
        int i4 = 0;
        while (it.hasNext()) {
            if (it.next().f65252c) {
                i4++;
            }
        }
        return i4;
    }

    public ArrayList<Long> g() {
        ArrayList<Long> arrayList = new ArrayList<>(f());
        Iterator<a<T>.b> it = this.f65243e.iterator();
        while (it.hasNext()) {
            a<T>.b next = it.next();
            if (next.f65252c) {
                arrayList.add(next.a());
            }
        }
        return arrayList;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f65242d.size();
    }

    @Override // android.widget.Adapter
    public T getItem(int i4) {
        return this.f65242d.get(i4).f65250a;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i4) {
        return this.f65242d.get(i4).a().longValue();
    }

    @Override // android.widget.Adapter
    public View getView(int i4, View view, ViewGroup viewGroup) {
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(n(i4));
            if (this.f65240b) {
                view.jumpDrawablesToCurrentState();
            }
        }
        return view;
    }

    public ArrayList<Integer> h() {
        ArrayList<Integer> arrayList = new ArrayList<>(f());
        for (int i4 = 0; i4 < this.f65243e.size(); i4++) {
            if (this.f65243e.get(i4).f65252c) {
                arrayList.add(Integer.valueOf(i4));
            }
        }
        return arrayList;
    }

    public ArrayList<T> i() {
        ArrayList<T> arrayList = new ArrayList<>(f());
        Iterator<a<T>.b> it = this.f65243e.iterator();
        while (it.hasNext()) {
            a<T>.b next = it.next();
            if (next.f65252c) {
                arrayList.add(next.f65250a);
            }
        }
        return arrayList;
    }

    public ArrayList<T> j() {
        ArrayList<T> arrayList = new ArrayList<>(this.f65243e.size());
        Iterator<a<T>.b> it = this.f65243e.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().f65250a);
        }
        return arrayList;
    }

    @Override // android.widget.Filterable
    @Nullable
    /* renamed from: k */
    public a<T>.AbstractC0524a getFilter() {
        return null;
    }

    protected Spannable l(String str, int i4) {
        if (str == null) {
            return null;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        a<T>.AbstractC0524a filter = getFilter();
        if (filter != null && ((AbstractC0524a) filter).f65246b != null) {
            Matcher matcher = ((AbstractC0524a) filter).f65246b.matcher(str);
            while (matcher.find()) {
                spannableStringBuilder.setSpan(new BackgroundColorSpan(i4), matcher.start(), matcher.end(), 33);
            }
        }
        return spannableStringBuilder;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Spannable m(String str, Context context) {
        if (this.f65241c == null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{16842905});
            this.f65241c = Integer.valueOf(obtainStyledAttributes.getColor(0, 1714664933));
            obtainStyledAttributes.recycle();
        }
        return l(str, this.f65241c.intValue());
    }

    public boolean n(int i4) {
        return this.f65242d.get(i4).f65252c;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        this.f65240b = false;
    }

    public void o(boolean z9) {
        if (!z9 || this.f65239a == 2) {
            Iterator<a<T>.b> it = this.f65243e.iterator();
            while (it.hasNext()) {
                it.next().f65252c = z9;
            }
        }
    }

    public void p(int i4) {
        this.f65239a = i4;
        if (i4 == 0) {
            o(false);
            return;
        }
        boolean z9 = true;
        if (i4 != 1 || f() <= 1) {
            return;
        }
        Iterator<a<T>.b> it = this.f65243e.iterator();
        while (it.hasNext()) {
            a<T>.b next = it.next();
            if (z9 && next.f65252c) {
                z9 = false;
            } else {
                next.f65252c = false;
            }
        }
        e();
    }

    public void q(ArrayList<? extends T> arrayList) {
        this.f65243e.clear();
        Iterator<? extends T> it = arrayList.iterator();
        while (it.hasNext()) {
            this.f65243e.add(new b(it.next()));
        }
        this.f65242d = new ArrayList<>(this.f65243e);
        e();
    }

    public void r(ArrayList<? extends T> arrayList, c<T> cVar) {
        this.f65243e.clear();
        Iterator<? extends T> it = arrayList.iterator();
        while (it.hasNext()) {
            T next = it.next();
            this.f65243e.add(new b(this, next, cVar.a(next)));
        }
        this.f65242d = new ArrayList<>(this.f65243e);
        e();
    }

    public void s(T[] tArr) {
        q(new ArrayList<>(Arrays.asList(tArr)));
    }

    public void t(T[] tArr, c<T> cVar) {
        r(new ArrayList<>(Arrays.asList(tArr)), cVar);
    }

    public void u(ArrayList<Pair<T, Long>> arrayList) {
        this.f65243e.clear();
        Iterator<Pair<T, Long>> it = arrayList.iterator();
        while (it.hasNext()) {
            Pair<T, Long> next = it.next();
            this.f65243e.add(new b(this, next.first, next.second));
        }
        this.f65242d = new ArrayList<>(this.f65243e);
        e();
    }

    public void v(T[] tArr, long[] jArr) {
        this.f65243e.clear();
        new ArrayList(tArr.length);
        for (int i4 = 0; i4 < tArr.length && i4 < jArr.length; i4++) {
            this.f65243e.add(new b(this, tArr[i4], Long.valueOf(jArr[i4])));
        }
        this.f65242d = new ArrayList<>(this.f65243e);
        e();
    }

    public void w(int i4, boolean z9) {
        int i10 = this.f65239a;
        if (i10 != 0) {
            if (z9 && i10 == 1) {
                o(false);
            }
            this.f65242d.get(i4).f65252c = z9;
        }
    }

    public void x(long j4, boolean z9) {
        int i4 = this.f65239a;
        if (i4 != 0) {
            if (z9 && i4 == 1) {
                o(false);
            }
            Iterator<a<T>.b> it = this.f65243e.iterator();
            while (it.hasNext()) {
                a<T>.b next = it.next();
                if (next.a().longValue() == j4) {
                    next.f65252c = z9;
                    return;
                }
            }
        }
    }

    public void y(ArrayList<Long> arrayList) {
        Iterator<a<T>.b> it = this.f65243e.iterator();
        while (it.hasNext()) {
            a<T>.b next = it.next();
            next.f65252c = arrayList.contains(next.a());
        }
    }

    public void z(long[] jArr) {
        o(false);
        for (long j4 : jArr) {
            x(j4, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdvancedAdapter.java */
    /* loaded from: classes3.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        T f65250a;

        /* renamed from: b  reason: collision with root package name */
        Long f65251b;

        /* renamed from: c  reason: collision with root package name */
        boolean f65252c;

        b(T t9) {
            this.f65251b = null;
            this.f65252c = false;
            this.f65250a = t9;
        }

        public Long a() {
            Long l10 = this.f65251b;
            return Long.valueOf(l10 != null ? l10.longValue() : hashCode());
        }

        b(a aVar, T t9, boolean z9) {
            this(t9);
            this.f65252c = z9;
        }

        b(a aVar, T t9, Long l10) {
            this(t9);
            this.f65251b = l10;
        }
    }
}
