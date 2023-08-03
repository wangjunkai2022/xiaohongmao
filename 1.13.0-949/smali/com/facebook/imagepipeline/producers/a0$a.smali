.class Lcom/facebook/imagepipeline/producers/a0$a;
.super Ljava/lang/Object;
.source "JobScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/producers/a0;-><init>(Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/producers/a0$d;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/imagepipeline/producers/a0;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/producers/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/a0$a;->a:Lcom/facebook/imagepipeline/producers/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/a0$a;->a:Lcom/facebook/imagepipeline/producers/a0;

    invoke-static {v0}, Lcom/facebook/imagepipeline/producers/a0;->a(Lcom/facebook/imagepipeline/producers/a0;)V

    return-void
.end method
