package com.shizhefei.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.fragment.app.Fragment;

/* compiled from: BaseFragment.java */
/* loaded from: classes3.dex */
abstract class a extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    protected LayoutInflater f55335a;

    /* renamed from: b  reason: collision with root package name */
    private View f55336b;

    /* renamed from: c  reason: collision with root package name */
    private Context f55337c;

    /* renamed from: d  reason: collision with root package name */
    private ViewGroup f55338d;

    public <T extends View> T U(@IdRes int i4) {
        View view = this.f55336b;
        if (view != null) {
            return (T) view.findViewById(i4);
        }
        return null;
    }

    public Context V() {
        return this.f55337c;
    }

    public View W() {
        return this.f55336b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void X(Bundle bundle) {
    }

    public void Y(int i4) {
        Z((ViewGroup) this.f55335a.inflate(i4, this.f55338d, false));
    }

    public void Z(View view) {
        this.f55336b = view;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f55337c = getActivity().getApplicationContext();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f55335a = layoutInflater;
        this.f55338d = viewGroup;
        X(bundle);
        View view = this.f55336b;
        return view == null ? super.onCreateView(layoutInflater, viewGroup, bundle) : view;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f55336b = null;
        this.f55338d = null;
        this.f55335a = null;
    }
}
