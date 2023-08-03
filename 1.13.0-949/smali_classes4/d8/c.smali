.class public Ld8/c;
.super Ljava/lang/Object;
.source "DanmakuLoaderFactory.java"


# static fields
.field public static a:Ljava/lang/String; = "bili"

.field public static b:Ljava/lang/String; = "acfun"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lc8/a;
    .locals 1

    .line 1
    sget-object v0, Ld8/c;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ld8/b;->d()Ld8/b;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Ld8/c;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    invoke-static {}, Ld8/a;->d()Lc8/a;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
