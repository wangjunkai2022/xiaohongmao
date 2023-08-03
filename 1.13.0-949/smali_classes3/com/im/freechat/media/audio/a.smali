.class public final synthetic Lcom/im/freechat/media/audio/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function3;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/im/freechat/media/audio/a;->a:Lkotlin/jvm/functions/Function3;

    return-void
.end method


# virtual methods
.method public final onInfo(Landroid/media/MediaRecorder;II)V
    .locals 1

    iget-object v0, p0, Lcom/im/freechat/media/audio/a;->a:Lkotlin/jvm/functions/Function3;

    invoke-static {v0, p1, p2, p3}, Lcom/im/freechat/media/audio/b;->h(Lkotlin/jvm/functions/Function3;Landroid/media/MediaRecorder;II)V

    return-void
.end method
