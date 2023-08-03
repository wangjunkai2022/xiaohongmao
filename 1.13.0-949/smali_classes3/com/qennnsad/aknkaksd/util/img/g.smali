.class public final Lcom/qennnsad/aknkaksd/util/img/g;
.super Ljava/lang/Object;
.source "ImageOkHttpClientProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0007R\u001b\u0010\u0007\u001a\u00020\u00028BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/util/img/g;",
        "",
        "Lokhttp3/OkHttpClient;",
        "b",
        "Lkotlin/Lazy;",
        "a",
        "()Lokhttp3/OkHttpClient;",
        "client",
        "<init>",
        "()V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lcom/qennnsad/aknkaksd/util/img/g;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private static final b:Lkotlin/Lazy;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/util/img/g;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/util/img/g;-><init>()V

    sput-object v0, Lcom/qennnsad/aknkaksd/util/img/g;->a:Lcom/qennnsad/aknkaksd/util/img/g;

    sget-object v0, Lcom/qennnsad/aknkaksd/util/img/g$a;->a:Lcom/qennnsad/aknkaksd/util/img/g$a;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/qennnsad/aknkaksd/util/img/g;->b:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Lokhttp3/OkHttpClient;
    .locals 1

    sget-object v0, Lcom/qennnsad/aknkaksd/util/img/g;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static final b()Lokhttp3/OkHttpClient;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    sget-object v0, Lcom/qennnsad/aknkaksd/util/img/g;->a:Lcom/qennnsad/aknkaksd/util/img/g;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/util/img/g;->a()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
