.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/a;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;

    iget v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/a;->b:I

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;->d(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/c;ILandroid/view/View;)V

    return-void
.end method
