.class public final synthetic Ly4/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln7/g;


# instance fields
.field public final synthetic a:Ly4/e;


# direct methods
.method public synthetic constructor <init>(Ly4/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly4/d;->a:Ly4/e;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ly4/d;->a:Ly4/e;

    check-cast p1, Lcom/qennnsad/aknkaksd/analytics/data/events/Event;

    invoke-static {v0, p1}, Ly4/e;->a(Ly4/e;Lcom/qennnsad/aknkaksd/analytics/data/events/Event;)V

    return-void
.end method
