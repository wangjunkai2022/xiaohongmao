.class Lcom/koushikdutta/async/FilteredDataEmitter$1;
.super Ljava/lang/Object;
.source "FilteredDataEmitter.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/FilteredDataEmitter;->G(Lcom/koushikdutta/async/DataEmitter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/FilteredDataEmitter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/FilteredDataEmitter;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter$1;->a:Lcom/koushikdutta/async/FilteredDataEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/FilteredDataEmitter$1;->a:Lcom/koushikdutta/async/FilteredDataEmitter;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/DataEmitterBase;->v0(Ljava/lang/Exception;)V

    return-void
.end method
