/****************************************************************************
 ****************************************************************************
 ***
 ***   This header was automatically generated from a Linux kernel header
 ***   of the same name, to make information necessary for userspace to
 ***   call into the kernel available to libc.  It contains only constants,
 ***   structures, and macros generated from the original header, and thus,
 ***   contains no copyrightable information.
 ***
 ***   To edit the content of this header, modify the corresponding
 ***   source file (e.g. under external/kernel-headers/original/) then
 ***   run bionic/libc/kernel/tools/update_all.py
 ***
 ***   Any manual change here will be lost the next time this script will
 ***   be run. You've been warned!
 ***
 ****************************************************************************
 ****************************************************************************/
#ifndef __COMPRESS_OFFLOAD_H
#define __COMPRESS_OFFLOAD_H
#include <linux/types.h>
#include <sound/asound.h>
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#include <sound/compress_params.h>
#define SNDRV_COMPRESS_VERSION SNDRV_PROTOCOL_VERSION(0, 1, 2)
struct snd_compressed_buffer {
  __u32 fragment_size;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
  __u32 fragments;
} __attribute__((packed, aligned(4)));
struct snd_compr_params {
  struct snd_compressed_buffer buffer;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
  struct snd_codec codec;
  __u8 no_wake_mode;
} __attribute__((packed, aligned(4)));
struct snd_compr_tstamp {
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
  __u32 byte_offset;
  __u64 copied_total;
  __u32 pcm_frames;
  __u32 pcm_io_frames;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
  __u32 sampling_rate;
  __u64 timestamp;
} __attribute__((packed, aligned(4)));
struct snd_compr_avail {
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
  __u64 avail;
  struct snd_compr_tstamp tstamp;
} __attribute__((packed, aligned(4)));
enum snd_compr_direction {
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
  SND_COMPRESS_PLAYBACK = 0,
  SND_COMPRESS_CAPTURE
};
struct snd_compr_caps {
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
  __u32 num_codecs;
  __u32 direction;
  __u32 min_fragment_size;
  __u32 max_fragment_size;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
  __u32 min_fragments;
  __u32 max_fragments;
  __u32 codecs[MAX_NUM_CODECS];
  __u32 reserved[11];
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
} __attribute__((packed, aligned(4)));
struct snd_compr_codec_caps {
  __u32 codec;
  __u32 num_descriptors;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
  struct snd_codec_desc descriptor[MAX_NUM_CODEC_DESCRIPTORS];
} __attribute__((packed, aligned(4)));
struct snd_compr_audio_info {
  __u32 frame_size;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
  __u32 reserved[15];
} __attribute__((packed, aligned(4)));
#define SNDRV_COMPRESS_RENDER_MODE_AUDIO_MASTER 0
#define SNDRV_COMPRESS_RENDER_MODE_STC_MASTER 1
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define SNDRV_COMPRESS_CLK_REC_MODE_NONE 0
#define SNDRV_COMPRESS_CLK_REC_MODE_AUTO 1
enum sndrv_compress_encoder {
  SNDRV_COMPRESS_ENCODER_PADDING = 1,
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
  SNDRV_COMPRESS_ENCODER_DELAY = 2,
  SNDRV_COMPRESS_MIN_BLK_SIZE = 3,
  SNDRV_COMPRESS_MAX_BLK_SIZE = 4,
  SNDRV_COMPRESS_PATH_DELAY = 5,
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
  SNDRV_COMPRESS_RENDER_MODE = 6,
  SNDRV_COMPRESS_CLK_REC_MODE = 7,
  SNDRV_COMPRESS_RENDER_WINDOW = 8,
  SNDRV_COMPRESS_START_DELAY = 9,
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
};
#define SNDRV_COMPRESS_PATH_DELAY SNDRV_COMPRESS_PATH_DELAY
#define SNDRV_COMPRESS_RENDER_MODE SNDRV_COMPRESS_RENDER_MODE
#define SNDRV_COMPRESS_CLK_REC_MODE SNDRV_COMPRESS_CLK_REC_MODE
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define SNDRV_COMPRESS_RENDER_WINDOW SNDRV_COMPRESS_RENDER_WINDOW
#define SNDRV_COMPRESS_START_DELAY SNDRV_COMPRESS_START_DELAY
struct snd_compr_metadata {
  __u32 key;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
  __u32 value[8];
} __attribute__((packed, aligned(4)));
#define SNDRV_COMPRESS_IOCTL_VERSION _IOR('C', 0x00, int)
#define SNDRV_COMPRESS_GET_CAPS _IOWR('C', 0x10, struct snd_compr_caps)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define SNDRV_COMPRESS_GET_CODEC_CAPS _IOWR('C', 0x11, struct snd_compr_codec_caps)
#define SNDRV_COMPRESS_SET_PARAMS _IOW('C', 0x12, struct snd_compr_params)
#define SNDRV_COMPRESS_GET_PARAMS _IOR('C', 0x13, struct snd_codec)
#define SNDRV_COMPRESS_SET_METADATA _IOW('C', 0x14, struct snd_compr_metadata)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define SNDRV_COMPRESS_GET_METADATA _IOWR('C', 0x15, struct snd_compr_metadata)
#define SNDRV_COMPRESS_TSTAMP _IOR('C', 0x20, struct snd_compr_tstamp)
#define SNDRV_COMPRESS_AVAIL _IOR('C', 0x21, struct snd_compr_avail)
#define SNDRV_COMPRESS_PAUSE _IO('C', 0x30)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define SNDRV_COMPRESS_RESUME _IO('C', 0x31)
#define SNDRV_COMPRESS_START _IO('C', 0x32)
#define SNDRV_COMPRESS_STOP _IO('C', 0x33)
#define SNDRV_COMPRESS_DRAIN _IO('C', 0x34)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define SNDRV_COMPRESS_NEXT_TRACK _IO('C', 0x35)
#define SNDRV_COMPRESS_PARTIAL_DRAIN _IO('C', 0x36)
#define SNDRV_COMPRESS_SET_NEXT_TRACK_PARAM _IOW('C', 0x80, union snd_codec_options)
#define SND_COMPR_TRIGGER_DRAIN 7
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define SND_COMPR_TRIGGER_NEXT_TRACK 8
#define SND_COMPR_TRIGGER_PARTIAL_DRAIN 9
#endif

