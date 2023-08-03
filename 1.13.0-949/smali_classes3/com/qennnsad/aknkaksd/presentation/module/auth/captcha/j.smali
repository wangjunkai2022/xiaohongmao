.class public final Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;
.super Landroidx/fragment/app/DialogFragment;
.source "ReCaptchaDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReCaptchaDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReCaptchaDialog.kt\ncom/qennnsad/aknkaksd/presentation/module/auth/captcha/ReCaptchaDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,111:1\n1#2:112\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u0001\u0011B\u0017\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010\u0017\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002J&\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R$\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006!"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;",
        "Landroidx/fragment/app/DialogFragment;",
        "Ljava/io/InputStream;",
        "iS",
        "",
        "a0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "",
        "onDestroyView",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;",
        "a",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;",
        "reason",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;",
        "b",
        "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;",
        "captchaListener",
        "Le5/i0;",
        "binding",
        "Le5/i0;",
        "X",
        "()Le5/i0;",
        "Z",
        "(Le5/i0;)V",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private b:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private c:Le5/i0;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "captchaListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;

    return-void
.end method

.method public static synthetic U(Le5/i0;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;->Y(Le5/i0;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static final synthetic V(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;)Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;->b:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;

    return-object p0
.end method

.method public static final synthetic W(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;)Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;
    .locals 0

    iget-object p0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;->a:Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;

    return-object p0
.end method

.method private static final Y(Le5/i0;Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "$this_apply"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Le5/i0;->c:Landroid/webkit/WebView;

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    const-string p1, "about:blank"

    .line 4
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private final a0(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 5
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 7
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    .line 8
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 9
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sb.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :goto_2
    if-eqz p1, :cond_2

    .line 10
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_3
    throw v0
.end method


# virtual methods
.method public final X()Le5/i0;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;->c:Le5/i0;

    return-object v0
.end method

.method public final Z(Le5/i0;)V
    .locals 0
    .param p1    # Le5/i0;
        .annotation build Lm8/h;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;->c:Le5/i0;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/h;
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1
    invoke-static {p1, p2, p3}, Le5/i0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Le5/i0;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/h;

    invoke-direct {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/h;-><init>(Le5/i0;)V

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_1
    const/4 p2, 0x2

    const v0, 0x7f140377

    .line 4
    invoke-virtual {p0, p2, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 5
    iget-object p2, p1, Le5/i0;->c:Landroid/webkit/WebView;

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 7
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 8
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 9
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 10
    iget-object p2, p1, Le5/i0;->c:Landroid/webkit/WebView;

    invoke-virtual {p2, p3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 11
    iget-object p2, p1, Le5/i0;->c:Landroid/webkit/WebView;

    new-instance p3, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j$a;

    invoke-direct {p3, p0}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j$a;-><init>(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;)V

    const-class v0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j$a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v0, "recaptcha.html"

    invoke-virtual {p2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, p3

    :goto_0
    invoke-direct {p0, p2}, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;->a0(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "%site_key%"

    const-string v2, "6LeXnSEaAAAAAEk76L9441V8E7bI64jXNxV6SO2U"

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_3
    move-object v2, p3

    if-eqz v2, :cond_4

    .line 13
    iget-object v0, p1, Le5/i0;->c:Landroid/webkit/WebView;

    const/4 v5, 0x0

    const-string v1, "https://recaptcha.akxdp.com"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_4
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;->c:Le5/i0;

    .line 15
    invoke-virtual {p1}, Le5/i0;->b()Landroid/widget/RelativeLayout;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/j;->c:Le5/i0;

    return-void
.end method
