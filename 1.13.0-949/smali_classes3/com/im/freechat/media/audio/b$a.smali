.class final Lcom/im/freechat/media/audio/b$a;
.super Lkotlin/jvm/internal/Lambda;
.source "AudioRecordImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/im/freechat/media/audio/b;-><init>(Landroid/media/MediaRecorder;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroid/media/MediaRecorder;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "Landroid/media/MediaRecorder;",
        "<anonymous parameter 0>",
        "",
        "what",
        "<anonymous parameter 2>",
        "",
        "a",
        "(Landroid/media/MediaRecorder;II)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/im/freechat/media/audio/b;


# direct methods
.method constructor <init>(Lcom/im/freechat/media/audio/b;)V
    .locals 0

    iput-object p1, p0, Lcom/im/freechat/media/audio/b$a;->a:Lcom/im/freechat/media/audio/b;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/MediaRecorder;II)V
    .locals 0
    .param p1    # Landroid/media/MediaRecorder;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x320

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/im/freechat/media/audio/b$a;->a:Lcom/im/freechat/media/audio/b;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/im/freechat/media/audio/b;->g(Z)V

    .line 2
    iget-object p1, p0, Lcom/im/freechat/media/audio/b$a;->a:Lcom/im/freechat/media/audio/b;

    invoke-virtual {p1}, Lcom/im/freechat/media/audio/b;->d()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/media/MediaRecorder;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/im/freechat/media/audio/b$a;->a(Landroid/media/MediaRecorder;II)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
