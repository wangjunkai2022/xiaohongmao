.class final Lbolts/h$h;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbolts/h;->B(JLjava/util/concurrent/ScheduledExecutorService;Lbolts/c;)Lbolts/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/ScheduledFuture;

.field final synthetic b:Lbolts/i;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledFuture;Lbolts/i;)V
    .locals 0

    iput-object p1, p0, Lbolts/h$h;->a:Ljava/util/concurrent/ScheduledFuture;

    iput-object p2, p0, Lbolts/h$h;->b:Lbolts/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lbolts/h$h;->a:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 2
    iget-object v0, p0, Lbolts/h$h;->b:Lbolts/i;

    invoke-virtual {v0}, Lbolts/i;->e()Z

    return-void
.end method
