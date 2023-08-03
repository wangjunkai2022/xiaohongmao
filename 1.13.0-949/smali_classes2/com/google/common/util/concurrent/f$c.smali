.class final Lcom/google/common/util/concurrent/f$c;
.super Ljava/lang/Object;
.source "AbstractIdleService.java"

# interfaces
.implements Lcom/google/common/base/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/i0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/f;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/f$c;->a:Lcom/google/common/util/concurrent/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/f;Lcom/google/common/util/concurrent/f$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/f$c;-><init>(Lcom/google/common/util/concurrent/f;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/util/concurrent/f$c;->a:Lcom/google/common/util/concurrent/f;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/f;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/util/concurrent/f$c;->a:Lcom/google/common/util/concurrent/f;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/f;->f()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/f$c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
