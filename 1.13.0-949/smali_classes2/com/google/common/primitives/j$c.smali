.class final Lcom/google/common/primitives/j$c;
.super Lcom/google/common/base/h;
.source "Shorts.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/h<",
        "Ljava/lang/String;",
        "Ljava/lang/Short;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final c:Lcom/google/common/primitives/j$c;

.field private static final d:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/primitives/j$c;

    invoke-direct {v0}, Lcom/google/common/primitives/j$c;-><init>()V

    sput-object v0, Lcom/google/common/primitives/j$c;->c:Lcom/google/common/primitives/j$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/base/h;-><init>()V

    return-void
.end method

.method private r()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/common/primitives/j$c;->c:Lcom/google/common/primitives/j$c;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/j$c;->p(Ljava/lang/Short;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/j$c;->q(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method protected p(Ljava/lang/Short;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected q(Ljava/lang/String;)Ljava/lang/Short;
    .locals 0

    invoke-static {p1}, Ljava/lang/Short;->decode(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Shorts.stringConverter()"

    return-object v0
.end method
