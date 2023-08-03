package iamutkarshtiwari.github.io.ananas.editimage.widget;

import android.graphics.Bitmap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* compiled from: EditCache.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: e  reason: collision with root package name */
    public static final int f69831e = 10;

    /* renamed from: a  reason: collision with root package name */
    private final int f69832a;

    /* renamed from: b  reason: collision with root package name */
    private LinkedList<Bitmap> f69833b;

    /* renamed from: c  reason: collision with root package name */
    private int f69834c;

    /* renamed from: d  reason: collision with root package name */
    private List<InterfaceC0534a> f69835d;

    /* compiled from: EditCache.java */
    /* renamed from: iamutkarshtiwari.github.io.ananas.editimage.widget.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0534a {
        void a(a aVar);
    }

    public a(int i4) {
        this.f69833b = new LinkedList<>();
        this.f69834c = -1;
        this.f69835d = new ArrayList(2);
        this.f69832a = i4 <= 0 ? 10 : i4;
    }

    public static void e(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        bitmap.recycle();
    }

    private synchronized void q() {
        while (this.f69833b.size() > this.f69832a) {
            e(this.f69833b.pollFirst());
        }
    }

    public void a(InterfaceC0534a interfaceC0534a) {
        if (interfaceC0534a == null || this.f69835d.contains(interfaceC0534a)) {
            return;
        }
        this.f69835d.add(interfaceC0534a);
    }

    public boolean b() {
        int i4 = this.f69834c - 1;
        return i4 >= 0 && i4 < this.f69833b.size();
    }

    public boolean c() {
        int i4 = this.f69834c + 1;
        return i4 >= 0 && i4 < this.f69833b.size();
    }

    public String d() {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i4 = 0; i4 < this.f69833b.size(); i4++) {
            stringBuffer.append("{ " + this.f69833b.get(i4) + " }");
        }
        return stringBuffer.toString();
    }

    public int f() {
        return this.f69834c;
    }

    public Bitmap g() {
        Bitmap bitmap;
        int i4 = this.f69834c;
        if (i4 < 0 || i4 >= this.f69833b.size() || (bitmap = this.f69833b.get(this.f69834c)) == null || bitmap.isRecycled()) {
            return null;
        }
        return bitmap;
    }

    public int h() {
        return this.f69832a;
    }

    public synchronized Bitmap i() {
        Bitmap g4;
        this.f69834c--;
        g4 = g();
        m();
        return g4;
    }

    public synchronized Bitmap j() {
        Bitmap g4;
        this.f69834c++;
        g4 = g();
        m();
        return g4;
    }

    public synchronized int k() {
        return this.f69833b.size();
    }

    public synchronized boolean l() {
        return this.f69834c == this.f69833b.size() - 1;
    }

    protected void m() {
        for (InterfaceC0534a interfaceC0534a : this.f69835d) {
            interfaceC0534a.a(this);
        }
    }

    public synchronized boolean n(Bitmap bitmap) {
        if (bitmap != null) {
            if (!bitmap.isRecycled()) {
                while (!l()) {
                    e(this.f69833b.pollLast());
                }
                Bitmap bitmap2 = null;
                Iterator<Bitmap> it = this.f69833b.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else if (bitmap == it.next() && !bitmap.isRecycled()) {
                        bitmap2 = bitmap;
                        break;
                    }
                }
                if (bitmap2 != null) {
                    this.f69833b.remove(bitmap2);
                    this.f69833b.addLast(bitmap2);
                    q();
                } else {
                    this.f69833b.addLast(bitmap);
                    q();
                }
                this.f69834c = this.f69833b.size() - 1;
                m();
                return true;
            }
        }
        return false;
    }

    public synchronized void o() {
        Iterator<Bitmap> it = this.f69833b.iterator();
        while (it.hasNext()) {
            e(it.next());
        }
        this.f69833b.clear();
        m();
    }

    public void p(InterfaceC0534a interfaceC0534a) {
        if (interfaceC0534a == null || !this.f69835d.contains(interfaceC0534a)) {
            return;
        }
        this.f69835d.remove(interfaceC0534a);
    }

    public a() {
        this(10);
    }
}
