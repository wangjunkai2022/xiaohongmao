.class final Lcom/qennnsad/aknkaksd/presentation/module/main/webview/e$c;
.super Lkotlin/jvm/internal/Lambda;
.source "InterceptorWebViewClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qennnsad/aknkaksd/presentation/module/main/webview/e;-><init>(Lg5/a;Lc5/g;Lcom/qennnsad/aknkaksd/util/t0;Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/StringBuffer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Ljava/lang/StringBuffer;",
        "a",
        "()Ljava/lang/StringBuffer;"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/e$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/e$c;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/e$c;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/e$c;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/webview/e$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/StringBuffer;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/module/main/webview/e$c;->a()Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method
