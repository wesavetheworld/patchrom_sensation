.class Lcom/htc/music/HtcMusic$8;
.super Ljava/lang/Object;
.source "HtcMusic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/HtcMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/HtcMusic;


# direct methods
.method constructor <init>(Lcom/htc/music/HtcMusic;)V
    .locals 0
    .parameter

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/htc/music/HtcMusic$8;->this$0:Lcom/htc/music/HtcMusic;

    invoke-virtual {v0}, Lcom/htc/music/HtcMusic;->showSoundEffectDialog()V

    .line 1118
    return-void
.end method