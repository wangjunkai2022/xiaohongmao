.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/c;->a:Landroid/widget/TextView;

    iput-wide p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/c;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/c;->a:Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/c;->b:J

    invoke-static {v0, v1, v2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/pk/d$a;->a(Landroid/widget/TextView;J)V

    return-void
.end method
