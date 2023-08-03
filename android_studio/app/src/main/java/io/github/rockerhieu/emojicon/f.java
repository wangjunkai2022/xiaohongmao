package io.github.rockerhieu.emojicon;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentStatePagerAdapter;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import io.github.rockerhieu.emojicon.emoji.Emojicon;
import io.github.rockerhieu.emojicon.g;
import java.util.Arrays;
import java.util.List;

/* compiled from: EmojiconsFragment.java */
/* loaded from: classes3.dex */
public class f extends Fragment implements ViewPager.OnPageChangeListener, io.github.rockerhieu.emojicon.d {

    /* renamed from: h  reason: collision with root package name */
    private static final String f69878h = "useSystemDefaults";

    /* renamed from: a  reason: collision with root package name */
    private d f69879a;

    /* renamed from: c  reason: collision with root package name */
    private View[] f69881c;

    /* renamed from: d  reason: collision with root package name */
    private ViewPager f69882d;

    /* renamed from: e  reason: collision with root package name */
    private PagerAdapter f69883e;

    /* renamed from: f  reason: collision with root package name */
    private EmojiconRecentsManager f69884f;

    /* renamed from: b  reason: collision with root package name */
    private int f69880b = -1;

    /* renamed from: g  reason: collision with root package name */
    private boolean f69885g = false;

    /* compiled from: EmojiconsFragment.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f69886a;

        a(int i4) {
            this.f69886a = i4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            f.this.f69882d.setCurrentItem(this.f69886a);
        }
    }

    /* compiled from: EmojiconsFragment.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (f.this.f69879a != null) {
                f.this.f69879a.onEmojiconBackspaceClicked(view);
            }
        }
    }

    /* compiled from: EmojiconsFragment.java */
    /* loaded from: classes3.dex */
    private static class c extends FragmentStatePagerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private List<io.github.rockerhieu.emojicon.c> f69889a;

        public c(FragmentManager fragmentManager, List<io.github.rockerhieu.emojicon.c> list) {
            super(fragmentManager);
            this.f69889a = list;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.f69889a.size();
        }

        @Override // androidx.fragment.app.FragmentStatePagerAdapter
        public Fragment getItem(int i4) {
            return this.f69889a.get(i4);
        }
    }

    /* compiled from: EmojiconsFragment.java */
    /* loaded from: classes3.dex */
    public interface d {
        void onEmojiconBackspaceClicked(View view);
    }

    /* compiled from: EmojiconsFragment.java */
    /* loaded from: classes3.dex */
    public static class e implements View.OnTouchListener {

        /* renamed from: b  reason: collision with root package name */
        private int f69891b;

        /* renamed from: c  reason: collision with root package name */
        private final int f69892c;

        /* renamed from: d  reason: collision with root package name */
        private final View.OnClickListener f69893d;

        /* renamed from: f  reason: collision with root package name */
        private View f69895f;

        /* renamed from: a  reason: collision with root package name */
        private Handler f69890a = new Handler();

        /* renamed from: e  reason: collision with root package name */
        private Runnable f69894e = new a();

        /* compiled from: EmojiconsFragment.java */
        /* loaded from: classes3.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (e.this.f69895f == null) {
                    return;
                }
                e.this.f69890a.removeCallbacksAndMessages(e.this.f69895f);
                e.this.f69890a.postAtTime(this, e.this.f69895f, SystemClock.uptimeMillis() + e.this.f69892c);
                e.this.f69893d.onClick(e.this.f69895f);
            }
        }

        public e(int i4, int i10, View.OnClickListener onClickListener) {
            if (onClickListener == null) {
                throw new IllegalArgumentException("null runnable");
            }
            if (i4 >= 0 && i10 >= 0) {
                this.f69891b = i4;
                this.f69892c = i10;
                this.f69893d = onClickListener;
                return;
            }
            throw new IllegalArgumentException("negative interval");
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                this.f69895f = view;
                this.f69890a.removeCallbacks(this.f69894e);
                this.f69890a.postAtTime(this.f69894e, this.f69895f, SystemClock.uptimeMillis() + this.f69891b);
                this.f69893d.onClick(view);
                return true;
            } else if (action == 1 || action == 3 || action == 4) {
                this.f69890a.removeCallbacksAndMessages(this.f69895f);
                this.f69895f = null;
                return true;
            } else {
                return false;
            }
        }
    }

    public static void W(EditText editText) {
        editText.dispatchKeyEvent(new KeyEvent(0L, 0L, 0, 67, 0, 0, 0, 0, 6));
    }

    public static void X(EditText editText, Emojicon emojicon) {
        if (editText == null || emojicon == null) {
            return;
        }
        int selectionStart = editText.getSelectionStart();
        int selectionEnd = editText.getSelectionEnd();
        if (selectionStart < 0) {
            editText.append(emojicon.getEmoji());
        } else {
            editText.getText().replace(Math.min(selectionStart, selectionEnd), Math.max(selectionStart, selectionEnd), emojicon.getEmoji(), 0, emojicon.getEmoji().length());
        }
    }

    public static f Y(boolean z9) {
        f fVar = new f();
        Bundle bundle = new Bundle();
        bundle.putBoolean(f69878h, z9);
        fVar.setArguments(bundle);
        return fVar;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (getActivity() instanceof d) {
            this.f69879a = (d) getActivity();
        } else if (getParentFragment() instanceof d) {
            this.f69879a = (d) getParentFragment();
        } else {
            throw new IllegalArgumentException(context + " must implement interface " + d.class.getSimpleName());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.f69885g = getArguments().getBoolean(f69878h);
        } else {
            this.f69885g = false;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(g.m.F, viewGroup, false);
        ViewPager viewPager = (ViewPager) inflate.findViewById(g.j.f70358x0);
        this.f69882d = viewPager;
        viewPager.setOnPageChangeListener(this);
        int i4 = 1;
        c cVar = new c(getFragmentManager(), Arrays.asList(io.github.rockerhieu.emojicon.e.Z(this.f69885g), io.github.rockerhieu.emojicon.c.U(1, this, this.f69885g), io.github.rockerhieu.emojicon.c.U(2, this, this.f69885g), io.github.rockerhieu.emojicon.c.U(3, this, this.f69885g), io.github.rockerhieu.emojicon.c.U(4, this, this.f69885g), io.github.rockerhieu.emojicon.c.U(5, this, this.f69885g)));
        this.f69883e = cVar;
        this.f69882d.setAdapter(cVar);
        View[] viewArr = new View[6];
        this.f69881c = viewArr;
        viewArr[0] = inflate.findViewById(g.j.f70364z0);
        this.f69881c[1] = inflate.findViewById(g.j.A0);
        this.f69881c[2] = inflate.findViewById(g.j.B0);
        this.f69881c[3] = inflate.findViewById(g.j.C0);
        this.f69881c[4] = inflate.findViewById(g.j.D0);
        this.f69881c[5] = inflate.findViewById(g.j.E0);
        int i10 = 0;
        while (true) {
            View[] viewArr2 = this.f69881c;
            if (i10 >= viewArr2.length) {
                break;
            }
            viewArr2[i10].setOnClickListener(new a(i10));
            i10++;
        }
        inflate.findViewById(g.j.f70355w0).setOnTouchListener(new e(1000, 50, new b()));
        EmojiconRecentsManager emojiconRecentsManager = EmojiconRecentsManager.getInstance(inflate.getContext());
        this.f69884f = emojiconRecentsManager;
        int recentPage = emojiconRecentsManager.getRecentPage();
        if (recentPage != 0 || this.f69884f.size() != 0) {
            i4 = recentPage;
        }
        if (i4 == 0) {
            onPageSelected(i4);
        } else {
            this.f69882d.setCurrentItem(i4, false);
        }
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        this.f69879a = null;
        super.onDetach();
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i4) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i4, float f10, int i10) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i4) {
        int i10 = this.f69880b;
        if (i10 == i4) {
            return;
        }
        if (i4 == 0 || i4 == 1 || i4 == 2 || i4 == 3 || i4 == 4 || i4 == 5) {
            if (i10 >= 0) {
                View[] viewArr = this.f69881c;
                if (i10 < viewArr.length) {
                    viewArr[i10].setSelected(false);
                }
            }
            this.f69881c[i4].setSelected(true);
            this.f69880b = i4;
            this.f69884f.setRecentPage(i4);
        }
    }

    @Override // io.github.rockerhieu.emojicon.d
    public void s(Context context, Emojicon emojicon) {
        ((io.github.rockerhieu.emojicon.e) this.f69883e.instantiateItem((ViewGroup) this.f69882d, 0)).s(context, emojicon);
    }
}
