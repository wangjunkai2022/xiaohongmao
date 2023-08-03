.class public final synthetic Lp4/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lp4/e;


# direct methods
.method public synthetic constructor <init>(Lp4/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp4/d;->a:Lp4/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lp4/d;->a:Lp4/e;

    invoke-static {v0}, Lp4/e;->c(Lp4/e;)V

    return-void
.end method
