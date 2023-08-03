.class final Lcom/google/common/base/h$d;
.super Lcom/google/common/base/h;
.source "Converter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/base/h<",
        "TT;TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final c:Lcom/google/common/base/h$d;

.field private static final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/base/h$d;

    invoke-direct {v0}, Lcom/google/common/base/h$d;-><init>()V

    sput-object v0, Lcom/google/common/base/h$d;->c:Lcom/google/common/base/h$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/base/h;-><init>()V

    return-void
.end method

.method private p()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/common/base/h$d;->c:Lcom/google/common/base/h$d;

    return-object v0
.end method


# virtual methods
.method j(Lcom/google/common/base/h;)Lcom/google/common/base/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/h<",
            "TT;TS;>;)",
            "Lcom/google/common/base/h<",
            "TT;TS;>;"
        }
    .end annotation

    const-string v0, "otherConverter"

    invoke-static {p1, v0}, Lcom/google/common/base/a0;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/h;

    return-object p1
.end method

.method protected k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    return-object p1
.end method

.method protected l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    return-object p1
.end method

.method public bridge synthetic o()Lcom/google/common/base/h;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/base/h$d;->q()Lcom/google/common/base/h$d;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/google/common/base/h$d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/h$d<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Converter.identity()"

    return-object v0
.end method
