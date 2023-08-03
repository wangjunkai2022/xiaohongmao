.class public final synthetic Lp4/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lp4/e;


# direct methods
.method public synthetic constructor <init>(Lp4/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp4/b;->a:Lp4/e;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lp4/b;->a:Lp4/e;

    check-cast p1, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-static {v0, p1}, Lp4/e;->b(Lp4/e;Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method
