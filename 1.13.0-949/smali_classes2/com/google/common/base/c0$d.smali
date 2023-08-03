.class Lcom/google/common/base/c0$d;
.super Lcom/google/common/base/c0$e;
.source "Predicates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation

.annotation build Lh3/c;
.end annotation


# static fields
.field private static final c:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/google/common/base/z;->a(Ljava/lang/String;)Lcom/google/common/base/g;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/base/c0$e;-><init>(Lcom/google/common/base/g;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Predicates.containsPattern("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/base/c0$e;->a:Lcom/google/common/base/g;

    invoke-virtual {v1}, Lcom/google/common/base/g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
