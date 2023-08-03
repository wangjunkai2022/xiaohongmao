package com.tangxiaolv.telegramgallery;

import android.app.Application;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.appcompat.app.AppCompatActivity;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.util.a0;
import com.tangxiaolv.telegramgallery.Actionbar.b;
import com.tangxiaolv.telegramgallery.j;
import com.tangxiaolv.telegramgallery.m;
import com.tangxiaolv.telegramgallery.q;
import iamutkarshtiwari.github.io.ananas.editimage.EditImageActivity;
import io.sentry.protocol.a;
import io.sentry.protocol.i;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.Regex;
import timber.log.Timber;

/* compiled from: GalleryActivity.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 D2\u00020\u00012\u00020\u0002:\u00013B\u0007¢\u0006\u0004\bB\u0010CJ\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\u0002J\u0012\u0010\u000e\u001a\u00020\u00032\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0014J-\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000f2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00050\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\b\u0010\u0017\u001a\u00020\u0003H\u0016J\b\u0010\u0018\u001a\u00020\u0003H\u0016J\b\u0010\u0019\u001a\u00020\u0003H\u0014J\b\u0010\u001a\u001a\u00020\u0003H\u0014J\b\u0010\u001c\u001a\u00020\u001bH\u0016J(\u0010#\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020!H\u0016J\u0018\u0010$\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020!H\u0016J\u0010\u0010%\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020!H\u0016J\u0010\u0010&\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020!H\u0016J\u0018\u0010*\u001a\u00020\u001b2\u0006\u0010'\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020(H\u0016J\b\u0010+\u001a\u00020\u0003H\u0014J\u000e\u0010-\u001a\u00020\u00032\u0006\u0010,\u001a\u00020\u0005J\u000e\u0010.\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005R\u001e\u00102\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101R\u0018\u00105\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0018\u00109\u001a\u0004\u0018\u0001068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00108R\u0014\u0010<\u001a\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010;R\"\u0010A\u001a\u0010\u0012\f\u0012\n >*\u0004\u0018\u00010\t0\t0=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u0010@¨\u0006E"}, d2 = {"Lcom/tangxiaolv/telegramgallery/GalleryActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lcom/tangxiaolv/telegramgallery/Actionbar/b$p;", "", "U", "", "file", "Ljava/io/File;", "N", "Landroid/content/Intent;", "data", "O", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "", "requestCode", "", a.b.f83633h, "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "onLowMemory", "onBackPressed", "onPause", "onResume", "", "u", "Lcom/tangxiaolv/telegramgallery/Actionbar/f;", i.b.f83726i, "removeLast", "forceWithoutAnimation", "Lcom/tangxiaolv/telegramgallery/Actionbar/b;", com.google.android.exoplayer2.text.ttml.d.f25740w, "l", "s", "d", "t", "keyCode", "Landroid/view/KeyEvent;", "event", "onKeyUp", "onDestroy", "path", "R", ExifInterface.LATITUDE_SOUTH, "Ljava/util/ArrayList;", "a", "Ljava/util/ArrayList;", "mainFragmentsStack", "b", "Lcom/tangxiaolv/telegramgallery/Actionbar/b;", "actionBarLayout", "Lcom/tangxiaolv/telegramgallery/m;", "c", "Lcom/tangxiaolv/telegramgallery/m;", "albumPickerActivity", "Lcom/tangxiaolv/telegramgallery/m$h;", "Lcom/tangxiaolv/telegramgallery/m$h;", "mPhotoAlbumPickerActivityDelegate", "Landroidx/activity/result/ActivityResultLauncher;", "kotlin.jvm.PlatformType", "e", "Landroidx/activity/result/ActivityResultLauncher;", "imageEditor", "<init>", "()V", "f", "telegramgallery_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class GalleryActivity extends AppCompatActivity implements b.p {
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    public static final b f56230f = new b(null);
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    public static final String f56231g = "PHOTOS";
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    public static final String f56232h = "VIDEOS";
    @m8.g

    /* renamed from: i  reason: collision with root package name */
    public static final String f56233i = "GALLERY_CONFIG";
    @m8.g

    /* renamed from: j  reason: collision with root package name */
    private static final String f56234j = "EDITED_CACHES";
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private static final Lazy<Set<String>> f56235k;
    @m8.h

    /* renamed from: l  reason: collision with root package name */
    private static SharedPreferences f56236l;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private com.tangxiaolv.telegramgallery.Actionbar.b f56238b;
    @m8.h

    /* renamed from: c  reason: collision with root package name */
    private m f56239c;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final ActivityResultLauncher<Intent> f56241e;
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<com.tangxiaolv.telegramgallery.Actionbar.f> f56237a = new ArrayList<>();
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final m.h f56240d = new c();

    /* compiled from: GalleryActivity.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    static final class a extends Lambda implements Function0<Set<String>> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f56242a = new a();

        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        public final Set<String> invoke() {
            List emptyList;
            Set<String> mutableSet;
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            mutableSet = CollectionsKt___CollectionsKt.toMutableSet(emptyList);
            return mutableSet;
        }
    }

    /* compiled from: GalleryActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0006\u0010\u0006\u001a\u00020\u0004R!\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u00078FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR$\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0015R\u0014\u0010\u0017\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0015¨\u0006\u001b"}, d2 = {"Lcom/tangxiaolv/telegramgallery/GalleryActivity$b;", "", "", "path", "", "a", "b", "", "editedCaches$delegate", "Lkotlin/Lazy;", "c", "()Ljava/util/Set;", "editedCaches", "Landroid/content/SharedPreferences;", "preferences", "Landroid/content/SharedPreferences;", "d", "()Landroid/content/SharedPreferences;", "e", "(Landroid/content/SharedPreferences;)V", GalleryActivity.f56234j, "Ljava/lang/String;", GalleryActivity.f56233i, GalleryActivity.f56231g, "VIDEO", "<init>", "()V", "telegramgallery_release"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final void a(@m8.g String path) {
            SharedPreferences.Editor edit;
            SharedPreferences.Editor putStringSet;
            Intrinsics.checkNotNullParameter(path, "path");
            c().add(path);
            if (d() == null) {
                Application application = e.f56717a;
                e(application != null ? application.getSharedPreferences(GalleryActivity.f56234j, 0) : null);
            }
            SharedPreferences d4 = d();
            if (d4 != null && (edit = d4.edit()) != null && (putStringSet = edit.putStringSet(GalleryActivity.f56234j, c())) != null) {
                putStringSet.apply();
            }
            Timber.b bVar = Timber.f93860a;
            bVar.a("EDITED CACHES ADDED: " + path, new Object[0]);
        }

        public final void b() {
            SharedPreferences.Editor edit;
            SharedPreferences.Editor clear;
            if (c().isEmpty()) {
                SharedPreferences d4 = d();
                Set<String> stringSet = d4 != null ? d4.getStringSet(GalleryActivity.f56234j, null) : null;
                if (stringSet == null) {
                    stringSet = SetsKt__SetsKt.emptySet();
                }
                c().addAll(stringSet);
                if (c().isEmpty()) {
                    Timber.f93860a.a("EDITED CACHES IS EMPTY: NOTHING TO CLEAR", new Object[0]);
                    return;
                }
            }
            for (String str : c()) {
                boolean delete = new File(str).delete();
                Timber.b bVar = Timber.f93860a;
                bVar.a("DELETED EDITED CACHES " + str + ": " + delete, new Object[0]);
            }
            c().clear();
            SharedPreferences d10 = d();
            if (d10 == null || (edit = d10.edit()) == null || (clear = edit.clear()) == null) {
                return;
            }
            clear.apply();
        }

        @m8.g
        public final Set<String> c() {
            return (Set) GalleryActivity.f56235k.getValue();
        }

        @m8.h
        public final SharedPreferences d() {
            return GalleryActivity.f56236l;
        }

        public final void e(@m8.h SharedPreferences sharedPreferences) {
            GalleryActivity.f56236l = sharedPreferences;
        }
    }

    /* compiled from: GalleryActivity.kt */
    @Metadata(bv = {}, d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J$\u0010\u0007\u001a\u00020\u00062\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0003H\u0016J\b\u0010\u000b\u001a\u00020\u0006H\u0016¨\u0006\f"}, d2 = {"com/tangxiaolv/telegramgallery/GalleryActivity$c", "Lcom/tangxiaolv/telegramgallery/m$h;", "Ljava/util/ArrayList;", "", "photos", "captions", "", "c", "path", "", "a", "b", "telegramgallery_release"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class c implements m.h {
        c() {
        }

        @Override // com.tangxiaolv.telegramgallery.m.h
        public boolean a(@m8.g String path) {
            Intrinsics.checkNotNullParameter(path, "path");
            Intent intent = new Intent();
            intent.putExtra(GalleryActivity.f56232h, path);
            GalleryActivity.this.setResult(-1, intent);
            return true;
        }

        @Override // com.tangxiaolv.telegramgallery.m.h
        public void b() {
        }

        @Override // com.tangxiaolv.telegramgallery.m.h
        public void c(@m8.g ArrayList<String> photos, @m8.g ArrayList<String> captions) {
            Intrinsics.checkNotNullParameter(photos, "photos");
            Intrinsics.checkNotNullParameter(captions, "captions");
            Intent intent = new Intent();
            intent.putExtra(GalleryActivity.f56231g, photos);
            GalleryActivity.this.setResult(-1, intent);
        }
    }

    static {
        Lazy<Set<String>> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(a.f56242a);
        f56235k = lazy;
    }

    public GalleryActivity() {
        ActivityResultLauncher<Intent> registerForActivityResult = registerForActivityResult(new j(), new ActivityResultCallback() { // from class: com.tangxiaolv.telegramgallery.f
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                GalleryActivity.P(GalleryActivity.this, (Intent) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResul…leEditorImage(it) }\n    }");
        this.f56241e = registerForActivityResult;
    }

    @JvmStatic
    public static final void M(@m8.g String str) {
        f56230f.a(str);
    }

    private final File N(String str) {
        Object last;
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) new Regex(".").split(str, 0));
        String format = new SimpleDateFormat("yyyyMMdd_HHmmss_SSS", Locale.US).format(new Date(System.currentTimeMillis()));
        return new File(getCacheDir(), "tempfile_" + format + '.' + ((String) last));
    }

    private final void O(Intent intent) {
        if (intent.getBooleanExtra(i.f56722a, false)) {
            return;
        }
        String stringExtra = intent.getStringExtra(iamutkarshtiwari.github.io.ananas.editimage.p.f69658p);
        boolean booleanExtra = intent.getBooleanExtra(EditImageActivity.K, false);
        if (stringExtra == null || stringExtra.length() == 0) {
            return;
        }
        if (booleanExtra) {
            o.E0().p0(BitmapFactory.decodeFile(stringExtra));
        }
        boolean delete = new File(stringExtra).delete();
        Timber.b bVar = Timber.f93860a;
        bVar.a("EDITOR TEMP DELETED " + stringExtra + " --> " + delete, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P(GalleryActivity this$0, Intent intent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (intent != null) {
            this$0.O(intent);
        }
    }

    private final void U() {
        Parcelable parcelableExtra = getIntent().getParcelableExtra(f56233i);
        GalleryConfig galleryConfig = parcelableExtra instanceof GalleryConfig ? (GalleryConfig) parcelableExtra : null;
        if (galleryConfig != null) {
            this.f56239c = new m(galleryConfig.getFilterMimeTypes(), galleryConfig.getLimitPickPhoto(), galleryConfig.isSinglePhoto(), galleryConfig.getHintOfPick(), false);
        }
        m mVar = this.f56239c;
        if (mVar != null) {
            mVar.B0(this.f56240d);
        }
        com.tangxiaolv.telegramgallery.Actionbar.b bVar = this.f56238b;
        if (bVar != null) {
            bVar.W(this.f56239c, false, true, true);
        }
    }

    public final void R(@m8.g String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        File N = N(path);
        ActivityResultLauncher<Intent> activityResultLauncher = this.f56241e;
        j.a aVar = j.f56723a;
        String absolutePath = N.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "tempFile.absolutePath");
        activityResultLauncher.launch(aVar.a(this, path, absolutePath));
    }

    public final void S(@m8.g String file) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(file));
        intent.setDataAndType(Uri.parse(file), a0.f27441f);
        startActivity(intent);
    }

    @Override // com.tangxiaolv.telegramgallery.Actionbar.b.p
    public boolean d(@m8.g com.tangxiaolv.telegramgallery.Actionbar.b layout) {
        Intrinsics.checkNotNullParameter(layout, "layout");
        if (layout.F.size() <= 1) {
            finish();
            return false;
        }
        return true;
    }

    @Override // com.tangxiaolv.telegramgallery.Actionbar.b.p
    public boolean l(@m8.g com.tangxiaolv.telegramgallery.Actionbar.f fragment, boolean z9, boolean z10, @m8.g com.tangxiaolv.telegramgallery.Actionbar.b layout) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(layout, "layout");
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (o.E0().J0()) {
            o.E0().t0(true, false);
            return;
        }
        com.tangxiaolv.telegramgallery.Actionbar.b bVar = this.f56238b;
        Intrinsics.checkNotNull(bVar);
        bVar.M();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@m8.h Bundle bundle) {
        super.onCreate(bundle);
        setContentView(q.l.C);
        e.a(getApplication());
        View findViewById = findViewById(q.i.L4);
        Intrinsics.checkNotNull(findViewById, "null cannot be cast to non-null type android.widget.FrameLayout");
        com.tangxiaolv.telegramgallery.Actionbar.b bVar = new com.tangxiaolv.telegramgallery.Actionbar.b(this);
        this.f56238b = bVar;
        ((FrameLayout) findViewById).addView(bVar);
        com.tangxiaolv.telegramgallery.Actionbar.b bVar2 = this.f56238b;
        Intrinsics.checkNotNull(bVar2);
        bVar2.I(this.f56237a);
        com.tangxiaolv.telegramgallery.Actionbar.b bVar3 = this.f56238b;
        Intrinsics.checkNotNull(bVar3);
        bVar3.setDelegate(this);
        if (checkCallingOrSelfPermission("android.permission.READ_EXTERNAL_STORAGE") != 0 && Build.VERSION.SDK_INT >= 23) {
            requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 1);
        } else {
            U();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        o.E0().u0();
        com.tangxiaolv.telegramgallery.Utils.e.T().H();
        m mVar = this.f56239c;
        Intrinsics.checkNotNull(mVar);
        mVar.T();
        com.tangxiaolv.telegramgallery.Actionbar.b bVar = this.f56238b;
        Intrinsics.checkNotNull(bVar);
        bVar.E();
        ArrayList<com.tangxiaolv.telegramgallery.Actionbar.f> arrayList = this.f56237a;
        Intrinsics.checkNotNull(arrayList);
        arrayList.clear();
        this.f56237a = null;
        this.f56238b = null;
        this.f56239c = null;
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i4, @m8.g KeyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (i4 == 82) {
            com.tangxiaolv.telegramgallery.Actionbar.b bVar = this.f56238b;
            Intrinsics.checkNotNull(bVar);
            bVar.onKeyUp(i4, event);
        }
        return super.onKeyUp(i4, event);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        com.tangxiaolv.telegramgallery.Actionbar.b bVar = this.f56238b;
        Intrinsics.checkNotNull(bVar);
        bVar.O();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        com.tangxiaolv.telegramgallery.Actionbar.b bVar = this.f56238b;
        Intrinsics.checkNotNull(bVar);
        bVar.Q();
        if (o.E0().J0()) {
            o.E0().N0();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i4, @m8.g String[] permissions, @m8.g int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        super.onRequestPermissionsResult(i4, permissions, grantResults);
        U();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        com.tangxiaolv.telegramgallery.Actionbar.b bVar = this.f56238b;
        Intrinsics.checkNotNull(bVar);
        bVar.R();
        if (o.E0().J0()) {
            o.E0().Q0();
        }
    }

    @Override // com.tangxiaolv.telegramgallery.Actionbar.b.p
    public boolean s(@m8.g com.tangxiaolv.telegramgallery.Actionbar.f fragment, @m8.g com.tangxiaolv.telegramgallery.Actionbar.b layout) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(layout, "layout");
        return true;
    }

    @Override // com.tangxiaolv.telegramgallery.Actionbar.b.p
    public void t(@m8.g com.tangxiaolv.telegramgallery.Actionbar.b layout) {
        Intrinsics.checkNotNullParameter(layout, "layout");
    }

    @Override // com.tangxiaolv.telegramgallery.Actionbar.b.p
    public boolean u() {
        if (o.E0().J0()) {
            o.E0().t0(true, false);
            return true;
        }
        return false;
    }
}
