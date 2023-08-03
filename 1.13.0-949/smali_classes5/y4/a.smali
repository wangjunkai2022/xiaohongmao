.class public final synthetic Ly4/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/analytics/data/events/Event;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/analytics/data/events/Event;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/a;->a:Lcom/qennnsad/aknkaksd/analytics/data/events/Event;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ly4/a;->a:Lcom/qennnsad/aknkaksd/analytics/data/events/Event;

    invoke-static {v0}, Ly4/e;->d(Lcom/qennnsad/aknkaksd/analytics/data/events/Event;)Lcom/qennnsad/aknkaksd/analytics/data/events/Event;

    move-result-object v0

    return-object v0
.end method
