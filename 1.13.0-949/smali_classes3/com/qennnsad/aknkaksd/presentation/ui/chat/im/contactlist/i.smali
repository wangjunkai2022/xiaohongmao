.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Le5/c1;


# direct methods
.method public synthetic constructor <init>(ZLe5/c1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/i;->a:Z

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/i;->b:Le5/c1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/i;->a:Z

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/i;->b:Le5/c1;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/contactlist/ContactListFragment;->A0(ZLe5/c1;)V

    return-void
.end method
