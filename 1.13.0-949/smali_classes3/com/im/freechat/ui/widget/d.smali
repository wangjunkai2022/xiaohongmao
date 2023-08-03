.class public final synthetic Lcom/im/freechat/ui/widget/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/im/freechat/ui/widget/ChatDetailsAudioPlayLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/im/freechat/ui/widget/ChatDetailsAudioPlayLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/ui/widget/d;->a:Lcom/im/freechat/ui/widget/ChatDetailsAudioPlayLayout;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/ui/widget/d;->a:Lcom/im/freechat/ui/widget/ChatDetailsAudioPlayLayout;

    check-cast p1, Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-static {v0, p1}, Lcom/im/freechat/ui/widget/ChatDetailsAudioPlayLayout;->d(Lcom/im/freechat/ui/widget/ChatDetailsAudioPlayLayout;Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method
