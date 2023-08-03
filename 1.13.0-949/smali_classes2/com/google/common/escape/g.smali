.class public final Lcom/google/common/escape/g;
.super Ljava/lang/Object;
.source "Escapers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/escape/g$c;
    }
.end annotation

.annotation build Lh3/a;
.end annotation

.annotation build Lh3/b;
.end annotation


# static fields
.field private static final a:Lcom/google/common/escape/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/escape/g$a;

    invoke-direct {v0}, Lcom/google/common/escape/g$a;-><init>()V

    sput-object v0, Lcom/google/common/escape/g;->a:Lcom/google/common/escape/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/common/escape/f;)Lcom/google/common/escape/i;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lcom/google/common/escape/i;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/google/common/escape/i;

    return-object p0

    .line 4
    :cond_0
    instance-of v0, p0, Lcom/google/common/escape/d;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Lcom/google/common/escape/d;

    invoke-static {p0}, Lcom/google/common/escape/g;->g(Lcom/google/common/escape/d;)Lcom/google/common/escape/i;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create a UnicodeEscaper from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b()Lcom/google/common/escape/g$c;
    .locals 2

    new-instance v0, Lcom/google/common/escape/g$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/escape/g$c;-><init>(Lcom/google/common/escape/g$a;)V

    return-object v0
.end method

.method public static c(Lcom/google/common/escape/d;C)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/escape/d;->c(C)[C

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/escape/g;->f([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/google/common/escape/i;I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/escape/i;->d(I)[C

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/escape/g;->f([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e()Lcom/google/common/escape/f;
    .locals 1

    sget-object v0, Lcom/google/common/escape/g;->a:Lcom/google/common/escape/f;

    return-object v0
.end method

.method private static f([C)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static g(Lcom/google/common/escape/d;)Lcom/google/common/escape/i;
    .locals 1

    new-instance v0, Lcom/google/common/escape/g$b;

    invoke-direct {v0, p0}, Lcom/google/common/escape/g$b;-><init>(Lcom/google/common/escape/d;)V

    return-object v0
.end method
