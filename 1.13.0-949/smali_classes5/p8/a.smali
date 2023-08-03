.class public final Lp8/a;
.super Ljava/lang/Object;
.source "KoinAndroidApplication.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001a\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004H\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lp8/a;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lorg/koin/core/logger/Level;",
        "androidLoggerLevel",
        "Lorg/koin/core/a;",
        "b",
        "<init>",
        "()V",
        "koin-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final a:Lp8/a;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp8/a;

    invoke-direct {v0}, Lp8/a;-><init>()V

    sput-object v0, Lp8/a;->a:Lp8/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lorg/koin/core/a;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, v0}, Lp8/a;->c(Landroid/content/Context;Lorg/koin/core/logger/Level;ILjava/lang/Object;)Lorg/koin/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Landroid/content/Context;Lorg/koin/core/logger/Level;)Lorg/koin/core/a;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p1    # Lorg/koin/core/logger/Level;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidLoggerLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lorg/koin/core/a;->c:Lorg/koin/core/a$a;

    invoke-virtual {v0}, Lorg/koin/core/a$a;->a()Lorg/koin/core/a;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/koin/android/ext/koin/a;->a(Lorg/koin/core/a;Landroid/content/Context;)Lorg/koin/core/a;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/koin/android/ext/koin/a;->d(Lorg/koin/core/a;Lorg/koin/core/logger/Level;)Lorg/koin/core/a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/content/Context;Lorg/koin/core/logger/Level;ILjava/lang/Object;)Lorg/koin/core/a;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    sget-object p1, Lorg/koin/core/logger/Level;->INFO:Lorg/koin/core/logger/Level;

    :cond_0
    invoke-static {p0, p1}, Lp8/a;->b(Landroid/content/Context;Lorg/koin/core/logger/Level;)Lorg/koin/core/a;

    move-result-object p0

    return-object p0
.end method
