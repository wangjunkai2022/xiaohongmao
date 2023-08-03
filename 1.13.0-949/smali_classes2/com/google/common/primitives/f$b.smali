.class final Lcom/google/common/primitives/f$b;
.super Lcom/google/common/base/h;
.source "Ints.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/h<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final c:Lcom/google/common/primitives/f$b;

.field private static final d:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/primitives/f$b;

    invoke-direct {v0}, Lcom/google/common/primitives/f$b;-><init>()V

    sput-object v0, Lcom/google/common/primitives/f$b;->c:Lcom/google/common/primitives/f$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/base/h;-><init>()V

    return-void
.end method

.method private r()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/common/primitives/f$b;->c:Lcom/google/common/primitives/f$b;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/f$b;->p(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/f$b;->q(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected p(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected q(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Ints.stringConverter()"

    return-object v0
.end method
