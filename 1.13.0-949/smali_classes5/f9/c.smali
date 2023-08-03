.class public Lf9/c;
.super Ljava/lang/Object;
.source "MiniDnsIdna.java"


# static fields
.field private static a:Lf9/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf9/a;

    invoke-direct {v0}, Lf9/a;-><init>()V

    sput-object v0, Lf9/c;->a:Lf9/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lf9/b;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    sput-object p0, Lf9/c;->a:Lf9/b;

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lf9/c;->a:Lf9/b;

    invoke-interface {v0, p0}, Lf9/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lf9/c;->a:Lf9/b;

    invoke-interface {v0, p0}, Lf9/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
